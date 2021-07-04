import 'package:flutter/material.dart';
import 'package:shop_app_one/models/Product.dart';
import 'package:shop_app_one/widgets/detail_screen/appbar.dart';
import 'package:shop_app_one/widgets/detail_screen/body_one.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: detailAppBar(color: product.color, context: context),
      body: BodyDetail(products: product),
    );
  }
}
