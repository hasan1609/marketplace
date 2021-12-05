import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/size_config.dart';

class CustomBottomNavBarCheckout extends StatelessWidget {
  const CustomBottomNavBarCheckout({
    Key? key,
    required this.press,
    required this.text,
  }) : super(key: key);

  final String text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getPropertionateScreenWidth(6),
          horizontal: getPropertionateScreenWidth(20)),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: getPropertionateScreenWidth(10),
          ),
          SizedBox(
            height: getPropertionateScreenWidth(50),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: primaryColor,
              onPressed: press as void Function()?,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: getPropertionateScreenWidth(18),
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
