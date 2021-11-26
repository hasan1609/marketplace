import 'package:flutter/material.dart';
import 'package:marketplace/component/rounded_icon.dart';
import 'package:marketplace/screen/addproduk/addproduk.dart';
import 'package:marketplace/size_config.dart';

class customBarProduk extends StatelessWidget implements PreferredSizeWidget {
  const customBarProduk({Key? key}) : super(key: key);

  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getPropertionateScreenWidth(10),
          vertical: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            roundedIcon(
              iconData: Icons.arrow_back,
              press: () => Navigator.pop(context),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, addProduk.routeName);
                },
                icon: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
