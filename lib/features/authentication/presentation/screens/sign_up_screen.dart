import 'package:aveline/core/app_colors.dart';
import 'package:aveline/core/widgets/custom_elevated_button.dart';
import 'package:aveline/features/Home/presentation/screens/home_screen.dart';
import 'package:aveline/features/authentication/cubit/authentication_cubit.dart';
import 'package:aveline/features/authentication/cubit/authentication_states.dart';
import 'package:aveline/features/authentication/presentation/screens/otp_screen.dart';
import 'package:aveline/features/authentication/presentation/widgets/auth_header.dart';
import 'package:aveline/features/authentication/presentation/widgets/custom_text_field.dart';
import 'package:aveline/features/authentication/presentation/widgets/pass_text_field.dart';
import 'package:aveline/features/authentication/presentation/widgets/social_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 44),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AuthHeader(
                  authEyebrow: 'JOIN US NOW',
                  authTitle: 'Create your account.',
                  authSubTitle:
                      'Save favorites and discover pieces picked for you.',
                ),
                SizedBox(height: 28),

                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        hintTxt: 'Fisrt name',
                        iconPath: 'assets/icons/person.svg',
                        controller: firstNameController,
                      ),
                    ),

                    SizedBox(width: 20.h),

                    Expanded(
                      child: CustomTextField(
                        hintTxt: 'Last name',
                        iconPath: 'assets/icons/person.svg',
                        controller: lastNameController,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),

                CustomTextField(
                  hintTxt: 'Email address',
                  iconPath: 'assets/icons/msg_icon.svg',
                  controller: emailController,
                ),

                SizedBox(height: 12),

                PassTextField(
                  hintTxt: 'Password',
                  iconPath: 'assets/icons/lock_icon.svg',
                  controller: passController,
                ),
                SizedBox(height: 12),

                BlocConsumer<AuthCubit, AuthStates>(
                  listener: (context, state) {
                    // TODO: implement listener
                    if (state is AuthSuccessState) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OtpScreen()),
                      );
                    } else if (state is AuthFailureState) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('register failed${state.errorMessage}'),
                        ),
                      );
                    }
                  },
                  builder: (context, state) {
                    return CustomElevatedButton(
                      label: state is AuthSuccessState
                          ? 'Creating account'
                          : 'Create account',
                      buttonClr: AppColors.buttonsClr,
                      labelClr: AppColors.whiteClr,
                      onpressed: state is AuthLoadingState
                          ? () {}
                          : () => context.read<AuthCubit>().registercubit(
                              emailController.text.trim(),
                              passController.text.trim(),
                              firstNameController.text.trim(),
                              lastNameController.text.trim(),
                            ),
                    );
                  },
                ),

                SizedBox(height: 16),

                SocialLogin(
                  authFooterText1: 'Already a member?',
                  authFooterText2: 'Log in',
                  onpressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }
}
