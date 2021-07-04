import 'package:flutter/material.dart';
import 'package:shop_app_one/constants.dart';
import 'package:shop_app_one/models/Product.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.products,
  }) : super(key: key);

  final Product products;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ///text and circul color
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              //Circule
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BableColor(
                    color: products.color,
                    ischeck: true,
                  ),

                  ///
                  BableColor(
                    color: Colors.brown,
                  ),

                  ///
                  BableColor(
                    color: Colors.orange,
                  ),

                  ///
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(style: TextStyle(color: Colors.black), children: [
              TextSpan(text: "Size\n"),
              TextSpan(
                  text: "${products.size}cm",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold))
            ]),
          ),
        ),
      ],
    );
  }
}

class BableColor extends StatelessWidget {
  final Color color;
  final bool ischeck;
  const BableColor({
    Key? key,
    required this.color,
    this.ischeck = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2,
      ),
      padding: EdgeInsets.all(2.4),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        border: Border.all(
          color: ischeck ? color : Colors.transparent,
        ),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
