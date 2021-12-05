import 'package:flutter/material.dart';
import 'package:marketplace/component/default_button.dart';
import 'package:marketplace/component/produkseller.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/model/Produk.dart';
import 'package:marketplace/screen/tokoproduk/component/search.dart';
import 'package:marketplace/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(
              height: getPropertionateScreenWidth(8),
            ),
            search(),
            SizedBox(
              height: getPropertionateScreenWidth(20),
            ),
            ...List.generate(
              demoProduk.length,
              (index) {
                return produkSeller(
                  produk: demoProduk[index],
                  press: () {},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
