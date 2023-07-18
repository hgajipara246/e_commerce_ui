import 'package:e_commerce_ui/constant/constant.dart';
import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
          icon: Icons.remove,
          function: () {
            if (numOfItems > 1)
              setState(() {
                numOfItems--;
              });
          },
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
          child: Text(
            "${numOfItems.toString().padLeft(2, "0")}",
            style: Theme.of(context).textTheme.headline6!,
          ),
        ),
        buildOutlineButton(
          icon: Icons.add,
          function: () {
            setState(() {
              numOfItems++;
            });
          },
        ),
      ],
    );
  }

  SizedBox buildOutlineButton({
    IconData? icon,
    Function()? function,
  }) {
    return SizedBox(
      height: 30,
      width: 40,
      child: OutlinedButton(
        style: ButtonStyle(
          padding: MaterialStatePropertyAll(EdgeInsets.zero),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
          ),
        ),
        onPressed: function!,
        child: Icon(
          icon as IconData?,
        ),
      ),
    );
  }
}
