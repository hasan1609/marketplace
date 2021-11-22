import 'package:flutter/material.dart';
import 'package:marketplace/component/produkseller.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/model/produk.dart';
import 'package:marketplace/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getPropertionateScreenWidth(10)),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ...List.generate(
              demoProduk.length,
              (index) {
                if (demoProduk[index].populer)
                  return produkSeller(
                    produk: demoProduk[index],
                    press: () {},
                  );
                return SizedBox.shrink();
              },
            ),
            SizedBox(
              height: getPropertionateScreenWidth(20),
            )
          ],
        ),
      ),
    );
  }
}
