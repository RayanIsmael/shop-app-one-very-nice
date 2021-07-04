import 'package:flutter/material.dart';
import 'package:shop_app_one/constants.dart';
import 'package:shop_app_one/models/Product.dart';


class EndButton extends StatelessWidget {
  const EndButton({
    Key? key,
    required this.products,
  }) : super(key: key);

  final Product products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPaddin * 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            width: 58.0,
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.grey),
            ),
            child: Icon(
              Icons.add_shopping_cart,
              size: 30,
              color: products.color,
            ),
          ),
          /////loger button
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(left: kDefaultPaddin),
                alignment: Alignment.center,
                height: 50.0,
                decoration: BoxDecoration(
                  color: products.color,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  "BUY NOW",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
