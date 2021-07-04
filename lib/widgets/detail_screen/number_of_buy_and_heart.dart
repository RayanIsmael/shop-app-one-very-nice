import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_one/constants.dart';


class NumberOfBuy extends StatefulWidget {
  NumberOfBuy({Key? key}) : super(key: key);

  @override
  _NumberOfBuyState createState() => _NumberOfBuyState();
}

class _NumberOfBuyState extends State<NumberOfBuy> {
  int buynumber = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ////button
            buttonAddSub(
                icon: Icons.remove,
                press: () {
                  setState(() {
                    buynumber == 1 ? buynumber = 1 : buynumber--;
                  });
                }),
            ///////
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 4),
              child: Text(
                "$buynumber".padLeft(2, "0"),
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            ////button
            buttonAddSub(
                icon: Icons.add,
                press: () {
                  setState(() {
                    buynumber++;
                  });
                }),
            ///////
          ],
        ),
        Container(
          alignment: Alignment.center,
          height: 34,
          width: 34,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
          child: Icon(CupertinoIcons.heart_fill, color: Colors.white),
        ),
      ],
    );
  }

  InkWell buttonAddSub({required IconData icon, required VoidCallback press}) {
    return InkWell(
        onTap: press,
        child: Container(
            alignment: Alignment.center,
            width: 40.0,
            height: 32.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.grey),
            ),
            child: Icon(
              icon,
              size: 24,
              color: Colors.grey[600],
            )));
  }
}
