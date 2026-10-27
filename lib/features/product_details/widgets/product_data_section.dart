import 'package:aveline/core/app_colors.dart';
import 'package:aveline/core/app_text_style.dart';
import 'package:aveline/features/product_details/widgets/Product_attribute_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDataSection extends StatelessWidget {
  const ProductDataSection({
    super.key,
    required this.name,
    required this.description,
    required this.stock,
    required this.weight,
    required this.color,
    required this.rating,
    required this.categories,
    required this.price,
  });
  final String name;
  final String description;
  final int stock;
  final double weight;
  final String color;
  final double rating;
  final List<String> categories;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50.h,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 8.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.secondryClr,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Text(categories[index]),
                );
              },
              separatorBuilder: (context, builder) {
                return SizedBox(width: 20.h);
              },
              itemCount: categories.length,
            ),
          ),

          //name section
          Row(
            children: [
              Text(
                name,
                style: AppTextStyle.authenticationHeader.copyWith(
                  color: AppColors.textPrimaryColor,
                ),
                maxLines: 2,
              ),
              Spacer(),

              Text(
                price.toString(),
                style: AppTextStyle.homeHeaderText.copyWith(
                  color: AppColors.secondryClr,
                ),
              ),
            ],
          ),
          Text(description),

          ProductAttributeItem(label: 'stock', data: stock.toString()),
          ProductAttributeItem(label: 'wight', data: weight.toString()),
          ProductAttributeItem(label: 'color', data: color),
          ProductAttributeItem(label: 'rating', data: rating.toString()),
        ],
      ),
    );
  }
}
