import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/screen/register/register.dart';
import 'package:marketplace/size_config.dart';

class SwitchTextAkun extends StatelessWidget {
  const SwitchTextAkun({
    Key? key,
    required this.text1,
    required this.press,
    required this.text2,
  }) : super(key: key);

  final String text1, text2;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: TextStyle(fontSize: getPropertionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            text2,
            style: TextStyle(
              fontSize: getPropertionateScreenWidth(16),
              color: primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
