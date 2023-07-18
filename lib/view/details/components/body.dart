import 'package:e_commerce_ui/constant/constant.dart';
import 'package:e_commerce_ui/model/product.dart';
import 'package:e_commerce_ui/view/details/components/add_to_cart.dart';
import 'package:e_commerce_ui/view/details/components/color_and_size.dart';
import 'package:e_commerce_ui/view/details/components/counter_with_like_button.dart';
import 'package:e_commerce_ui/view/details/components/description.dart';
import 'package:e_commerce_ui/view/details/components/product_title_wiith_image.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  final Product? product;
  const DetailsBody({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: defaultPadding,
                    right: defaultPadding,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      const SizedBox(height: defaultPadding / 2),
                      Description(product: product),
                      const SizedBox(height: defaultPadding / 2),
                      const CounterWithLikeButton(),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
