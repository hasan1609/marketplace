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

    return DefaultTabController(
      length: arguments.kategori.subkategori.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            arguments.kategori.nama,
            style: TextStyle(color: Colors.black),
          ),
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: secondaryColor,
            labelStyle: TextStyle(
                color: Colors.black,
                fontSize: getPropertionateScreenWidth(14),
                fontWeight: FontWeight.w600),
            tabs: List.generate(
              arguments.kategori.subkategori.length,
              (index) {
                return Tab(
                  text: arguments.kategori.subkategori[index].namaSyb,
                );
              },
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
      ),
    );
  }
}

class kategoriDetailArgumen {
  final tesKategori kategori;

  kategoriDetailArgumen({required this.kategori});
}
