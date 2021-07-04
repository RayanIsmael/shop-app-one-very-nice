import 'package:flutter/material.dart';
import 'package:shop_app_one/constants.dart';


class Caretory extends StatefulWidget {
  Caretory({Key? key}) : super(key: key);

  @override
  _CaretoryState createState() => _CaretoryState();
}

class _CaretoryState extends State<Caretory> {
  List<String> category = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) => categoryText(index),
      ),
    );
  }

  Widget categoryText(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedindex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${category[index]}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedindex == index ? kTextColor : kTextLightColor,
                fontSize: 14,
              ),
            ),

            ///line
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin / 5),
              height: 2,
              width: 30,
              color: selectedindex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
