import 'package:aveline/core/app_colors.dart';
import 'package:aveline/core/app_text_style.dart';
import 'package:aveline/features/Home/cubit/product/product_cubit.dart';
import 'package:aveline/features/Home/cubit/product/product_states.dart';
import 'package:aveline/features/Home/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Products',
          style: AppTextStyle.titleStyle.copyWith(
            color: AppColors.textPrimaryColor,
          ),
        ),
        SizedBox(height: 15.h),

        BlocBuilder<ProductCubit, ProductStates>(
          builder: (context, state) {
            if (state is ProductLoadingState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is ProductFailureState) {
              return Text(state.errorMessage);
            } else if (state is ProductSuccessState) {
              final products = state.productList;
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 13.h,
                  mainAxisSpacing: 15.h,
                  childAspectRatio: 164 / 215,
                ),
                itemCount: products.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductCard(
                    coverPictureUrl: product.coverPictureUrl,
                    brandName: product.categories.isNotEmpty
                        ? product.categories.first
                        : '',
                    itemName: product.name,
                    price: product.price.toString(),
                  );
                },
              );
            } else {
              return Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(color: AppColors.secondryClr),
              );
            }
          },
        ),
      ],
    );
  }
}
