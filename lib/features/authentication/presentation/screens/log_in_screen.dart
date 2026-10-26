import 'package:aveline/core/app_colors.dart';
import 'package:aveline/core/app_text_style.dart';
import 'package:aveline/features/authentication/cubit/authentication_cubit.dart';
import 'package:aveline/features/authentication/cubit/authentication_states.dart';
import 'package:aveline/features/authentication/data/auth_remote_data_source.dart';
import 'package:aveline/features/Home/presentation/screens/home_screen.dart';
import 'package:aveline/features/authentication/presentation/widgets/auth_header.dart';
import 'package:aveline/core/widgets/custom_elevated_button.dart';
import 'package:aveline/features/authentication/presentation/widgets/custom_text_field.dart';
import 'package:aveline/features/authentication/presentation/widgets/pass_text_field.dart';
import 'package:aveline/features/authentication/presentation/widgets/social_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  final AuthRemoteDataSource authRemoteDataSource = AuthRemoteDataSource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 44.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //* login screen header
                AuthHeader(
                  authEyebrow: 'WELCOME BACK',
                  authTitle: 'Good to see you again.',
                  authSubTitle: 'Sign in to continue your style story.',
                ),
                SizedBox(height: 28.h),

                //*email & pass textfields
                CustomTextField(
                  hintTxt: 'Email address',
                  iconPath: 'assets/icons/msg_icon.svg',
                  controller: emailController,
                ),
                SizedBox(height: 12.h),
                PassTextField(
                  hintTxt: 'Password',
                  iconPath: 'assets/icons/lock_icon.svg',
                  controller: passController,
                ),

                //* login button
                SizedBox(height: 46.h),

                BlocConsumer<AuthCubit, AuthStates>(
                  listener: (context, state) {
                    if (state is AuthSuccessState) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    } else if (state is AuthFailureState) {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text('Login failed')));
                    }
                  },
                  builder: (context, state) {
                    return CustomElevatedButton(
                      label: state is AuthLoadingState
                          ? 'logging in...'
                          : 'Login',
                      buttonClr: AppColors.buttonsClr,
                      labelClr: AppColors.whiteClr,
                      onpressed: state is AuthLoadingState
                          ? () {}
                          : () {
                              context.read<AuthCubit>().logincubit(
                                emailController.text.trim(),
                                passController.text.toString().trim(),
                              );
                            },
                    );
                  },
                ),

                // BlocBuilder<AuthCubit, AuthStates>(
                SizedBox(height: 16.h),

                //* continue with google button
                SocialLogin(
                  authFooterText1: 'New to Aveline?',
                  authFooterText2: 'Create account',
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
    passController.dispose();
    emailController.dispose();

    super.dispose();
  }
}
