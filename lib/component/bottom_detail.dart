import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketplace/component/buttonWhite.dart';
import 'package:marketplace/component/default_button.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/enum.dart';
import 'package:marketplace/screen/home/home.dart';
import 'package:marketplace/size_config.dart';

class CustomBottomNavBarDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            SizedBox(
              width: getPropertionateScreenWidth(10),
            ),
            Container(
              padding: EdgeInsets.all(getPropertionateScreenWidth(2)),
              height: getPropertionateScreenWidth(30),
              width: getPropertionateScreenWidth(30),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                border: Border.all(color: secondaryColor),
                borderRadius: BorderRadius.circular(5),
              ),
              child: SvgPicture.asset("assets/icons/Bell.svg"),
            ),
            SizedBox(
              width: getPropertionateScreenWidth(10),
            ),
            Expanded(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: secondaryColor),
                ),
                color: Colors.white,
                onPressed: () {},
                child: Text(
                  "Beli",
                  style: TextStyle(
                    fontSize: getPropertionateScreenWidth(15),
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: getPropertionateScreenWidth(5),
            ),
            Expanded(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                color: primaryColor,
                onPressed: () {},
                child: Text(
                  "Keranjang",
                  style: TextStyle(
                    fontSize: getPropertionateScreenWidth(15),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: getPropertionateScreenWidth(10),
            ),
          ],
        ),
      ),
    );
  }
}
