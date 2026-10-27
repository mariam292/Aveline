import 'package:aveline/core/app_colors.dart';
import 'package:aveline/core/app_text_style.dart';
import 'package:aveline/features/Home/cubit/category/categories_cubit.dart';
import 'package:aveline/features/Home/cubit/category/category_states.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesSection extends StatefulWidget {
  const CategoriesSection({super.key, required this.categoriesCount});
  final int categoriesCount;

  @override
  State<CategoriesSection> createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {
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
          child: BlocBuilder<CategoriesCubit, CategoriesStates>(
            builder: (context, state) {
              if (state is CategoryLoadingState) {
                return Center(child: CircularProgressIndicator());
              } else if (state is CategoryFailureState) {
                return Text(state.errorMessage);
              } else if (state is CategorySuccessState) {
                final Categories = state.categories;
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: Categories.length,

                  itemBuilder: (context, index) {
                    final Category = Categories[index];

                    return Column(
                      children: [
                        Card(
                          child: CircleAvatar(
                            radius: 30.r,
                            backgroundImage: NetworkImage(
                              Category.coverPictureUrl,
                            ),
                          ),
                        ),

                        Text(
                          Category.name,
                          style: AppTextStyle.textFieldHint.copyWith(
                            color: AppColors.mutedColor,
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 17.w),
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
        ),
      ],
    );
  }
}
