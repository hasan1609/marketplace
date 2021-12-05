import 'package:flutter/material.dart';
import 'package:marketplace/screen/home/component/home_header.dart';
import 'package:marketplace/component/saldo.dart';
import 'package:marketplace/screen/home/component/kategory_menu.dart';
import 'package:marketplace/screen/home/component/produk_populer.dart';
import 'package:marketplace/screen/home/component/rekomendasi.dart';
import 'package:marketplace/screen/home/component/iklan.dart';
import 'package:marketplace/size_config.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getPropertionateScreenWidth(10)),
            homeHeader(),
            SizedBox(height: getPropertionateScreenWidth(25)),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getPropertionateScreenWidth(15)),
              child: Saldo(
                saldoKoin: "1.000.000.000",
                saldoUang: "100.000.000.000",
              ),
            ),
            SizedBox(height: getPropertionateScreenWidth(25)),
            categoryMenu(),
            SizedBox(height: getPropertionateScreenWidth(25)),
            Iklan(),
            SizedBox(height: getPropertionateScreenWidth(25)),
            Rekomendasi(),
            SizedBox(height: getPropertionateScreenWidth(25)),
            produkPopuler(),
            SizedBox(height: getPropertionateScreenWidth(25)),
          ],
        ),
      ),
    );
  }
}
