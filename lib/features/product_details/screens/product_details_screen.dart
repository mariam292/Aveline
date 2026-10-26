import 'package:aveline/features/product_details/widgets/bg_image_section.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [BgImageSection(imageUrl: 'assets/images/testingimg2.png')],
        ),
      ),
    );
  }
}
