import 'package:aveline/core/app_colors.dart';
import 'package:aveline/core/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PassTextField extends StatelessWidget {
  const PassTextField({
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
    return TextFormField(
      controller: controller,

      decoration: InputDecoration(
        fillColor: AppColors.whiteClr,
        filled: true,

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.secondryClr, width: 1.5),
          borderRadius: BorderRadius.circular(14),
        ),

        prefixIcon: SvgPicture.asset(iconPath, fit: BoxFit.scaleDown),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.mutedColor),
          borderRadius: BorderRadius.circular(14),
        ),

        hintText: hintTxt,
        hintStyle: AppTextStyle.textFieldHint.copyWith(
          color: AppColors.mutedColor,
        ),
      ),
    );
  }
}
