import 'package:aveline/core/app_colors.dart';
import 'package:aveline/core/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.coverPictureUrl,
    required this.brandName,
    required this.itemName,
    required this.price,
  });
  final String coverPictureUrl;
  final String brandName;
  final String itemName;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: AppColors.whiteClr,
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),

              child: Image.network(
                coverPictureUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(9.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  brandName,
                  style: AppTextStyle.textFieldHint.copyWith(
                    color: AppColors.secondryClr,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  itemName,
                  style: AppTextStyle.normalText.copyWith(
                    color: AppColors.textPrimaryColor,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: AppTextStyle.normalText.copyWith(
                        color: AppColors.textPrimaryColor,
                      ),
                    ),

                    Text(
                      'EGP',
                      style: AppTextStyle.textFieldHint.copyWith(
                        color: AppColors.textSecondryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
