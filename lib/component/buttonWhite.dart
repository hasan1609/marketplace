import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/size_config.dart';

class BtnWhite extends StatelessWidget {
  const BtnWhite({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getPropertionateScreenWidth(50),
      height: getPropertionateScreenWidth(50),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: secondaryColor),
        ),
        color: Colors.white,
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: getPropertionateScreenWidth(15),
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
