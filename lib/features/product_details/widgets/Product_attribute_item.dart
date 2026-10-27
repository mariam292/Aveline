import 'package:flutter/material.dart';

class ProductAttributeItem extends StatelessWidget {
  const ProductAttributeItem({
    super.key,
    required this.label,
    required this.data,
  });
  final String label, data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(thickness: 1.5),
        Row(children: [Text(label), Spacer(), Text(data)]),
      ],
    );
  }
}
