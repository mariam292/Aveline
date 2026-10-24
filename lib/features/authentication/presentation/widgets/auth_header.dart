import 'package:aveline/core/app_colors.dart';
import 'package:aveline/core/app_text_style.dart';
import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.authEyebrow,
    required this.authTitle,
    required this.authSubTitle,
  });
  final String authEyebrow, authTitle, authSubTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          authEyebrow,
          style: AppTextStyle.normalText.copyWith(color: AppColors.secondryClr),
        ),

        SizedBox(height: 12),

        Text(
          authTitle,
          style: AppTextStyle.authenticationHeader.copyWith(
            color: AppColors.textPrimaryColor,
          ),
        ),

        SizedBox(height: 12),

        Text(
          authSubTitle,
          style: AppTextStyle.normalText.copyWith(
            color: AppColors.textSecondryColor,
          ),
        ),
      ],
    );
  }
}
