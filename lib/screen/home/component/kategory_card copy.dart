import 'package:flutter/material.dart';
import 'package:marketplace/component/kategorimenu.dart';
import 'package:marketplace/model/Kategori.dart';
import 'package:marketplace/size_config.dart';

class categoryMenu extends StatelessWidget {
  const categoryMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            kategoriList.length,
            (index) => kategoriCard(
              kategori: kategoriList[index],
              press: () {},
              // press: () =>
              //     Navigator.pushNamed(context, SubKategoriMenu.routeName),
            ),
          ),
        ],
      ),
    );
  }
}
