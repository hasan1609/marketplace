import 'package:flutter/material.dart';
import 'package:marketplace/component/produk_card.dart';
import 'package:marketplace/size_config.dart';
import 'package:marketplace/model/produk.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getPropertionateScreenWidth(15),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getPropertionateScreenWidth(10)),
            child: GridView.builder(
              itemCount: demoProduk.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: getPropertionateScreenWidth(10),
                crossAxisSpacing: getPropertionateScreenWidth(10),
                childAspectRatio: 0.73,
              ),
              itemBuilder: (context, index) => produkCard(
                produk: demoProduk[index],
                press: () {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}
