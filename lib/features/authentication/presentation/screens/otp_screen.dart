import 'package:aveline/core/app_colors.dart';
import 'package:aveline/features/authentication/presentation/widgets/auth_header.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
                Image.asset('assets/images/msgPic.png'),

                SizedBox(height: 30),

                AuthHeader(
                  authEyebrow: 'ONE LAST STEP',
                  authTitle: 'Check your inbox.',
                  authSubTitle: 'We sent a 6-digit code to your email',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
