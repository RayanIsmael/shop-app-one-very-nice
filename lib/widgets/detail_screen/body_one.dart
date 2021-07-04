import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_one/constants.dart';
import 'package:shop_app_one/models/Product.dart';
import 'package:shop_app_one/widgets/detail_screen/body_two.dart';
import 'package:shop_app_one/widgets/detail_screen/colorAndSize.dart';
import 'package:shop_app_one/widgets/detail_screen/description.dart';
import 'package:shop_app_one/widgets/detail_screen/end_button.dart';
import 'package:shop_app_one/widgets/detail_screen/number_of_buy_and_heart.dart';

class BodyDetail extends StatelessWidget {
  final Product products;
  const BodyDetail({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                ///circular
                Container(
                  margin: EdgeInsets.only(top: 260),
                  padding: EdgeInsets.only(
                    top: size.height * 0.20,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ColorAndSize(products: products),

                      ///description
                      Description(products: products),
                      //number of products And heard
                      NumberOfBuy(),

                      ///button end
                      EndButton(products: products),
                    ],
                  ),
                ),
                //title iamge price
                DetailBodyTwo(products: products),
              ],
            ),
          )
        ],
      ),
    );
  }
}
