import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/size_config.dart';

class IntroContent extends StatelessWidget {
  const IntroContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);

  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "Marketku",
          style: TextStyle(
              fontSize: getPropertionateScreenWidth(36),
              color: primaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image!,
          height: getPropertionateScreenHeight(365),
          width: getPropertionateScreenWidth(335),
        ),
      ],
    );
  }
}
