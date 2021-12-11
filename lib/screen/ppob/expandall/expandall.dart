import 'package:flutter/material.dart';
import 'package:marketplace/component/subkat_card.dart';
import 'package:marketplace/screen/paketdataku/paketdataku.dart';
import 'package:marketplace/screen/produk/produk_screen.dart';
import 'package:marketplace/screen/pulsaku/pulsaku.dart';
import 'package:marketplace/size_config.dart';

class ExpandAll extends StatelessWidget {
  const ExpandAll({Key? key}) : super(key: key);
  static String routeName = "/ppob/expandall";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Semua",
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
              press: () => Navigator.pushNamed(context, PulsaKu.routeName),
              gambar: "assets/icons/Pulsa.svg",
              nama: "Pulsa",
            ),
            SubkatCard(
              press: () => Navigator.pushNamed(context, PaketDataku.routeName),
              gambar: "assets/icons/Pulsa.svg",
              nama: "Paket Data",
            ),
            SubkatCard(
              press: () {},
              gambar: "assets/icons/Pulsa.svg",
              nama: "E-Wallet",
            ),
            SubkatCard(
              press: () {},
              gambar: "assets/icons/Pulsa.svg",
              nama: "Games",
            ),
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
            SubkatCard(
              press: () => Navigator.pushReplacementNamed(
                  context, ProdukScreen.routeName),
              gambar: "assets/icons/Elektronik.svg",
              nama: "Produk",
            ),
          ],
        ),
      ),
    );
  }
}
