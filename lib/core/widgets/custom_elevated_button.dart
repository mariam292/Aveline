import 'package:aveline/core/app_colors.dart';
import 'package:aveline/core/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.label,
    required this.buttonClr,
    required this.labelClr,
  });
  final String label;
  final Color buttonClr, labelClr;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(14),
        ),
        minimumSize: Size(double.infinity, 57),
        backgroundColor: buttonClr,
      ),
      child: Text(
        label,
        style: AppTextStyle.elevatedButton.copyWith(color: labelClr),
      ),
    );
  }
}
