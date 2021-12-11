import 'package:flutter/material.dart';
import 'package:marketplace/component/subkat_card.dart';
import 'package:marketplace/size_config.dart';

class TagihanKu extends StatelessWidget {
  const TagihanKu({Key? key}) : super(key: key);
  static String routeName = "/ppob/tagihan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tagihan",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: getPropertionateScreenWidth(10),
            vertical: getPropertionateScreenWidth(10)),
        child: GridView.count(
          childAspectRatio: 1,
          crossAxisCount: 3,
          children: [
            SubkatCard(
              press: () {},
              gambar: "assets/icons/Pulsa.svg",
              nama: "Listrik",
            ),
            SubkatCard(
              press: () {},
              gambar: "assets/icons/Pulsa.svg",
              nama: "Token",
            ),
            SubkatCard(
              press: () {},
              gambar: "assets/icons/Pulsa.svg",
              nama: "Pdam",
            ),
            SubkatCard(
              press: () {},
              gambar: "assets/icons/Pulsa.svg",
              nama: "Pgn",
            ),
          ],
        ),
      ),
    );
  }
}
