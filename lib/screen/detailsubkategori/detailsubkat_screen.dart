import 'package:flutter/material.dart';
import 'package:marketplace/component/bottom_nav_btn_checkout.dart';
import 'package:marketplace/model/testKategori.dart';
import 'package:marketplace/screen/checkouttopup/checkouttopup.dart';
import 'package:marketplace/screen/detailsubkategori/component/body.dart';
import 'package:marketplace/screen/detailsubkategori/component/ewalletscreen.dart';
import 'package:marketplace/screen/detailsubkategori/component/gamescreen.dart';
import 'package:marketplace/screen/detailsubkategori/component/paketdatascreen.dart';
import 'package:marketplace/screen/detailsubkategori/component/pulsascreen.dart';

class DetailSubkategoriScreen extends StatelessWidget {
  static String routeName = "/detailsubkategori";

  @override
  Widget build(BuildContext context) {
    final subkategoriDetailArgumen detailsubarguments =
        ModalRoute.of(context)!.settings.arguments as subkategoriDetailArgumen;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          detailsubarguments.kategori.namaSyb,
          // "tes",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Body(),
      // HalEwallet(),
      // HalPulsa(),
      // HalPaketData(),
      // HalGames()

      // body: (tesKategoriList.isNotEmpty) ? Container() : Container()
      bottomNavigationBar: CustomBottomNavBarCheckout(
        text: "Beli",
        press: () {
          Navigator.pushNamed(
            context,
            CheckoutTopup.routeName,
          );
        },
      ),
    );
  }
}

class subkategoriDetailArgumen {
  final testSubKategori kategori;

  subkategoriDetailArgumen({required this.kategori});
}
