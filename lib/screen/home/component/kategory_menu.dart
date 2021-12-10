import 'package:flutter/material.dart';
import 'package:marketplace/component/kategorimenu.dart';
import 'package:marketplace/model/Kategori.dart';
import 'package:marketplace/model/testKategori.dart';
import 'package:marketplace/screen/subkategori/subkategori_screen.dart';
import 'package:marketplace/screen/topup/topup.dart';
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
            tesKategoriList.length,
            (index) => kategoriCard(
              kategori: tesKategoriList[index],
              // press: () {},
              // press: () =>
              //     Navigator.pushNamed(context, SubKategoriMenu.routeName),
              press: () => Navigator.pushNamed(
                context,
                subKategoriScreen.routeName,
                arguments:
                    kategoriDetailArgumen(kategori: tesKategoriList[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
