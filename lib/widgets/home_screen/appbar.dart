import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_one/constants.dart';

AppBar homeAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(
        "images/icons/back.svg",
        color: kTextColor,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          "images/icons/search.svg",
          color: kTextColor,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          "images/icons/cart.svg",
          color: kTextColor,
        ),
      ),
      SizedBox(
        width: kDefaultPaddin / 2,
      )
    ],
  );
}
