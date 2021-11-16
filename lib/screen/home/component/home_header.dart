import 'package:flutter/material.dart';
import 'package:marketplace/screen/home/component/icon_bar.dart';
import 'package:marketplace/screen/home/component/search_bar.dart';
import 'package:marketplace/size_config.dart';

class homeHeader extends StatelessWidget {
  const homeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchBar(),
          notifBarHome(
            svgSrc: "assets/icons/Mail.svg",
            numOfItem: 3,
            press: () {},
          ),
          notifBarHome(
            svgSrc: "assets/icons/Bell.svg",
            numOfItem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
