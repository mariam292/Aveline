import 'package:aveline/core/app_colors.dart';
import 'package:aveline/core/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintTxt,
    required this.iconPath,
    required this.controller,
  });
  final String hintTxt;
  final String iconPath;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 57.h,

      child: TextFormField(
        controller: controller,

        decoration: InputDecoration(
          fillColor: AppColors.whiteClr,
          filled: true,

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondryClr, width: 1.5.w),
            borderRadius: BorderRadius.circular(14.r),
          ),

          prefixIcon: SvgPicture.asset(iconPath, fit: BoxFit.scaleDown),

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.mutedColor),
            borderRadius: BorderRadius.circular(14.r),
          ),

          hintText: hintTxt,
          hintStyle: AppTextStyle.textFieldHint.copyWith(
            color: AppColors.mutedColor,
          ),
        ),
      ),
    );
  }
}
