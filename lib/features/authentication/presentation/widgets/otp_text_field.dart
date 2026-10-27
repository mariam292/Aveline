import 'package:aveline/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpTextField extends StatefulWidget {
  const OtpTextField({super.key});

  @override
  State<OtpTextField> createState() => _OtpTextFieldState();
}

class _OtpTextFieldState extends State<OtpTextField> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65.h,

      child: TextFormField(
        keyboardType: TextInputType.number,

        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        controller: otpController,

        decoration: InputDecoration(
          fillColor: AppColors.whiteClr,
          filled: true,

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondryClr, width: 1.5.w),
            borderRadius: BorderRadius.circular(14.r),
          ),

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.mutedColor),
            borderRadius: BorderRadius.circular(14.r),
          ),
        ),
      ),
    );
  }
}
