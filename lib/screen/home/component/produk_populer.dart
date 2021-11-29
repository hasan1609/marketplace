import 'package:flutter/material.dart';
import 'package:marketplace/component/produk_card.dart';
import 'package:marketplace/model/produk.dart';
import 'package:marketplace/screen/detail/detail.dart';
import 'package:marketplace/screen/home/component/section_bar.dart';
import 'package:marketplace/screen/populerproduk/populerproduk.dart';
import 'package:marketplace/size_config.dart';

class produkPopuler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sectionBar(
          text: "Populer",
          press: () => Navigator.pushNamed(context, PopulerProduk.routeName),
        ),
        SizedBox(
          height: getPropertionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: getPropertionateScreenWidth(20),
            ),
            child: Row(
              children: [
                ...List.generate(
                  demoProduk.length,
                  (index) {
                    if (demoProduk[index].populer)
                      return produkCard(
                        produk: demoProduk[index],
                        press: () => Navigator.pushNamed(
                          context,
                          Detail.routeName,
                          arguments: produkDetailArgumen(
                            produk: demoProduk[index],
                          ),
                        ),
                      );
                    return SizedBox.shrink();
                  },
                ),
                SizedBox(
                  width: getPropertionateScreenWidth(20),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
