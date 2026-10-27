import 'package:flutter/material.dart';

class BgImageSection extends StatelessWidget {
  const BgImageSection({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      width: double.infinity,
      fit: BoxFit.fitWidth,
    );
  }
}
