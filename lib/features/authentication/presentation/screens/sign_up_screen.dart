import 'package:aveline/core/app_colors.dart';
import 'package:aveline/core/widgets/custom_elevated_button.dart';
import 'package:aveline/features/authentication/presentation/widgets/auth_header.dart';
import 'package:aveline/features/authentication/presentation/widgets/custom_text_field.dart';
import 'package:aveline/features/authentication/presentation/widgets/pass_text_field.dart';
import 'package:aveline/features/authentication/presentation/widgets/social_login.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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

                CustomTextField(
                  hintTxt: 'Full name',
                  iconPath: 'assets/icons/person.svg',
                ),
                SizedBox(height: 12),

                CustomTextField(
                  hintTxt: 'Email address',
                  iconPath: 'assets/icons/msg_icon.svg',
                ),

                SizedBox(height: 12),

                PassTextField(
                  hintTxt: 'Password',
                  iconPath: 'assets/icons/lock_icon.svg',
                ),
                SizedBox(height: 12),

                CustomElevatedButton(
                  label: 'Create account',
                  buttonClr: AppColors.buttonsClr,
                  labelClr: AppColors.whiteClr,
                ),

                SizedBox(height: 16),

                SocialLogin(
                  authFooterText1: 'Already a member?',
                  authFooterText2: 'Sign in',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
