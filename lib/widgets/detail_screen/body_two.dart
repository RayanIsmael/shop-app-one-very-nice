import 'package:flutter/material.dart';
import 'package:shop_app_one/constants.dart';
import 'package:shop_app_one/models/Product.dart';


class DetailBodyTwo extends StatelessWidget {
  const DetailBodyTwo({
    Key? key,
    required this.products,
  }) : super(key: key);

  final Product products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "${products.title}",
            style: Theme.of(context).textTheme.headline4!.copyWith(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
          //space
          SizedBox(
            height: kDefaultPaddin,
          ),
          //price and image
          Row(
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(text: "Price\n"),
                  TextSpan(
                    text: "\$${products.price}",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                  ),
                ]),
              ),
              //space
              SizedBox(
                width: kDefaultPaddin,
              ),
              //image
              Expanded(
                child: Hero(
                  tag: "${products.id}",
                  child: Image.asset(
                    products.image,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
