import 'package:flutter/material.dart';
import 'package:marketplace/size_config.dart';

class sectionBar extends StatelessWidget {
  const sectionBar({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: getPropertionateScreenWidth(18),
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              "Lebih Banyak >",
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
