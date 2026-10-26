import 'package:aveline/core/app_colors.dart';
import 'package:aveline/core/app_text_style.dart';
import 'package:aveline/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    super.key,
    required this.authFooterText1,
    required this.authFooterText2,
  });
  final String authFooterText1;
  final String authFooterText2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Divider(thickness: 1, color: AppColors.mutedColor)),
            Text(
              'or continue with',
              style: TextStyle(color: AppColors.mutedColor),
            ),
            Expanded(child: Divider(thickness: 1, color: AppColors.mutedColor)),
          ],
        ),

        SizedBox(height: 16),

        CustomElevatedButton(
          label: 'Google',
          buttonClr: AppColors.whiteClr,
          labelClr: AppColors.textPrimaryColor,
          onpressed: () {},
        ),
        SizedBox(height: 22),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              authFooterText1,
              style: AppTextStyle.normalText.copyWith(
                color: AppColors.textSecondryColor,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                authFooterText2,
                style: AppTextStyle.normalText.copyWith(
                  color: AppColors.secondryClr,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
