import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_one/widgets/home_screen/appbar.dart';
import 'package:shop_app_one/widgets/home_screen/body_one.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: homeAppBar(),
      body: BodyOne(),
    );
  }
}
