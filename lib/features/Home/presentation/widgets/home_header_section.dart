import 'package:aveline/core/app_colors.dart';
import 'package:aveline/core/app_text_style.dart';
import 'package:flutter/material.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'GOOD MORNING',
              style: AppTextStyle.normalText.copyWith(
                color: AppColors.mutedColor,
              ),
            ),

            Text(
              'Find your detail.',
              style: AppTextStyle.homeHeaderText.copyWith(
                color: AppColors.textPrimaryColor,
              ),
            ),
          ],
        ),

        Spacer(),
        CircleAvatar(backgroundColor: AppColors.buttonsClr),
      ],
    );
  }
}
