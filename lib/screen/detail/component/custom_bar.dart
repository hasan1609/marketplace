import 'package:flutter/material.dart';
import 'package:marketplace/component/rounded_icon.dart';
import 'package:marketplace/size_config.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getPropertionateScreenWidth(20),
          vertical: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            roundedIcon(
              iconData: Icons.arrow_back,
              press: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
