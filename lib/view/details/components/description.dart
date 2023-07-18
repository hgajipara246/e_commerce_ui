import 'package:e_commerce_ui/constant/constant.dart';
import 'package:e_commerce_ui/model/product.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.product,
  });

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: Text("${product!.description}", style: TextStyle(height: 1.5)),
    );
  }
}
