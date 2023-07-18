// ignore_for_file: library_private_types_in_public_api

import 'package:e_commerce_ui/constant/constant.dart';
import 'package:e_commerce_ui/model/product.dart';
import 'package:e_commerce_ui/view/details/details_screen.dart';
import 'package:e_commerce_ui/view/home_screen/components/item_cart.dart';
import 'package:flutter/material.dart';

import 'categories.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: defaultPadding,
              crossAxisSpacing: defaultPadding,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) => ItemCart(
              product: products[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    product: products[index],
                  ),
                ),
              ),
            ),
          ),
        ))
      ],
    );
  }
}
