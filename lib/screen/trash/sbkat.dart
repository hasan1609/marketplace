import 'package:flutter/material.dart';
import 'package:marketplace/component/bottom_nav_btn_checkout.dart';
import 'package:marketplace/model/Kategori.dart';
import 'package:marketplace/model/testKategori.dart';
import 'package:marketplace/screen/checkouttopup/checkouttopup.dart';
import 'package:marketplace/size_config.dart';

import '../../constant.dart';

class subKategoriScreen extends StatefulWidget {
  const subKategoriScreen({Key? key}) : super(key: key);
  static String routeName = "/subkategori";

  @override
  State<subKategoriScreen> createState() => _subKategoriScreenState();
}

class _subKategoriScreenState extends State<subKategoriScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final kategoriDetailArgumen arguments =
        ModalRoute.of(context)!.settings.arguments as kategoriDetailArgumen;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          arguments.kategori.nama,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(vertical: getPropertionateScreenWidth(10)),
        child: SizedBox(
          height: getPropertionateScreenWidth(30),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: arguments.kategori.subkategori.length,
            itemBuilder: (context, index) => buildCategory(index),
          ),
        ),
      ),
      // body: Body(),
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

  Widget buildCategory(int index) {
    final kategoriDetailArgumen arguments =
        ModalRoute.of(context)!.settings.arguments as kategoriDetailArgumen;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              arguments.kategori.subkategori[index].namaSyb,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? Colors.black : secondaryColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: getPropertionateScreenWidth(10)), //top padding 5
              height: getPropertionateScreenWidth(1.5),
              width: getPropertionateScreenWidth(26),
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}

class kategoriDetailArgumen {
  final tesKategori kategori;

  kategoriDetailArgumen({required this.kategori});
}
