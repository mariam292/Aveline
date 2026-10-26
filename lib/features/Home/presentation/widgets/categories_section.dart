import 'package:aveline/core/app_colors.dart';
import 'package:aveline/core/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key, required this.categoriesCount});
  final int categoriesCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Shop by category',
          style: AppTextStyle.titleStyle.copyWith(
            color: AppColors.textPrimaryColor,
          ),
        ),
        SizedBox(height: 16.h),

        SizedBox(
          height: 120.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Card(
                    child: CircleAvatar(
                      radius: 30.r,
                      backgroundImage: AssetImage(
                        'assets/images/testingImg.png',
                      ),
                    ),
                  ),

                  Text(
                    'category',
                    style: AppTextStyle.textFieldHint.copyWith(
                      color: AppColors.mutedColor,
                    ),
                  ),
                ],
              );
            },
            itemCount: categoriesCount,
            separatorBuilder: (context, index) => SizedBox(width: 17.w),
          ),
        ),
      ],
    );
  }
}
