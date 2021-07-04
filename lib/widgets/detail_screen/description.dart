import 'package:flutter/material.dart';
import 'package:shop_app_one/constants.dart';
import 'package:shop_app_one/models/Product.dart';


class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.products,
  }) : super(key: key);

  final Product products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPaddin),
      child: Text(
        "${products.description}",
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
