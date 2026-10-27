import 'package:aveline/core/app_colors.dart';
import 'package:aveline/features/authentication/presentation/widgets/auth_header.dart';
import 'package:aveline/features/authentication/presentation/widgets/otp_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
                Image.asset('assets/images/msgPic.png'),

                SizedBox(height: 30.h),

                AuthHeader(
                  authEyebrow: 'ONE LAST STEP',
                  authTitle: 'Check your inbox.',
                  authSubTitle: 'We sent a 6-digit code to your email',
                ),

                Row(
                  children: [
                    Expanded(child: OtpTextField()),

                    SizedBox(width: 10.h),
                    Expanded(child: OtpTextField()),

                    SizedBox(width: 10.h),
                    Expanded(child: OtpTextField()),

                    SizedBox(width: 10.h),
                    Expanded(child: OtpTextField()),

                    SizedBox(width: 10.h),
                    Expanded(child: OtpTextField()),

                    SizedBox(width: 10.h),
                    Expanded(child: OtpTextField()),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
