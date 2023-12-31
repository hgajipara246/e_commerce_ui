import 'package:e_commerce_ui/constant/constant.dart';
import 'package:e_commerce_ui/model/product.dart';
import 'package:flutter/material.dart';

class ItemCart extends StatelessWidget {
  final Product? product;
  final Function? press;
  const ItemCart({
    super.key,
    this.product,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press!(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                color: product!.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(product!.image as String),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding / 4),
            child: Text(
              product!.title as String,
              style: const TextStyle(
                fontSize: 17,
                color: textLightGrey,
              ),
            ),
          ),
          Text(
            "\$${product!.price}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
