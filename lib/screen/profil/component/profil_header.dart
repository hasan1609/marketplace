import 'package:flutter/material.dart';
import 'package:marketplace/screen/home/component/icon_bar.dart';
import 'package:marketplace/size_config.dart';

class profileBar extends StatelessWidget {
  const profileBar({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Akun Saya",
            style: TextStyle(
              color: Colors.black,
              fontSize: getPropertionateScreenWidth(23),
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              notifBarHome(
                svgSrc: "assets/icons/Mail.svg",
                numOfItem: 3,
                press: () {},
              ),
              SizedBox(width: getPropertionateScreenWidth(12)),
              notifBarHome(
                svgSrc: "assets/icons/Bell.svg",
                numOfItem: 3,
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
