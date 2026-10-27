import 'package:aveline/core/app_colors.dart';
import 'package:aveline/core/app_text_style.dart';
import 'package:aveline/features/Home/presentation/widgets/categories_section.dart';
import 'package:aveline/features/Home/presentation/widgets/home_header_section.dart';
import 'package:aveline/features/Home/presentation/widgets/product_card.dart';
import 'package:aveline/features/Home/presentation/widgets/products_section.dart';
import 'package:aveline/features/authentication/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController SearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 44.h),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeHeaderSection(),

                SizedBox(height: 20.h),

                CustomTextField(
                  hintTxt: 'Search bags, jewelry, more...',
                  iconPath: 'assets/icons/searchIcon.svg',
                  controller: SearchController,
                ),
                SizedBox(height: 25.h),

                CategoriesSection(categoriesCount: 15),
                SizedBox(height: 25.h),

                ProductsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
