import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getPropertionateScreenWidth(50),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: primaryColor,
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: getPropertionateScreenWidth(15),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
