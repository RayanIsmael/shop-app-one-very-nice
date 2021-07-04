import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_one/constants.dart';

AppBar detailAppBar({required Color color,required BuildContext context}) {
  return AppBar(
    elevation: 0,
    backgroundColor: color,
    leading: IconButton(
      onPressed: () => Navigator.of(context).pop(),
      icon: SvgPicture.asset(
        "images/icons/back.svg",
        color: Colors.white,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          "images/icons/search.svg",
          color: Colors.white,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          "images/icons/cart.svg",
          color: Colors.white,
        ),
      ),
      SizedBox(
        width: kDefaultPaddin / 2,
      )
    ],
  );
}
