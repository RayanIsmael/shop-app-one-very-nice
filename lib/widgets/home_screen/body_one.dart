import 'package:flutter/material.dart';
import 'package:shop_app_one/constants.dart';
import 'package:shop_app_one/models/Product.dart';
import 'package:shop_app_one/screens/detail_screen.dart';
import 'package:shop_app_one/widgets/home_screen/category.dart';
import 'package:shop_app_one/widgets/home_screen/produts.dart';

class BodyOne extends StatelessWidget {
  const BodyOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //first text in body
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Woman",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),

        ///category
        Padding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPaddin),
          child: Caretory(),
        ),
        //Products
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.72,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) => ProductsHome(
                product: products[index],
                press: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailScreen(product: products[index]),
                )),
              ),
            ),
          ),
        )
      ],
    );
  }
}
