import 'package:flutter/material.dart';
import 'package:marketplace/component/kategorimenu.dart';
import 'package:marketplace/model/Kategori.dart';
import 'package:marketplace/model/testKategori.dart';
import 'package:marketplace/screen/subkategori/subkategori_screen.dart';
<<<<<<< HEAD
import 'package:marketplace/screen/topup/topup.dart';
=======
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
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
<<<<<<< HEAD
              // press: () {},
              // press: () =>
              //     Navigator.pushNamed(context, SubKategoriMenu.routeName),
=======
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
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
