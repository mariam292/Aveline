import 'package:flutter/material.dart';

class BgImageSection extends StatelessWidget {
  const BgImageSection({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Image.asset(
        imageUrl,
        width: double.infinity,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
