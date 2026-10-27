import 'package:aveline/features/Home/data/models/product_data_model.dart';
import 'package:aveline/features/product_details/widgets/bg_image_section.dart';
import 'package:aveline/features/product_details/widgets/product_data_section.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.productDetails});
  final ProductDataModel productDetails;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BgImageSection(imageUrl: widget.productDetails.coverPictureUrl),

              ProductDataSection(
                name: widget.productDetails.name,
                description: widget.productDetails.description,
                stock: widget.productDetails.stock,
                weight: widget.productDetails.weight,
                color: widget.productDetails.color,
                rating: widget.productDetails.rating,
                categories: widget.productDetails.categories,
                price: widget.productDetails.price,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
