import 'package:flutter/material.dart';
import 'package:marketplace/screen/home/component/home_header.dart';
import 'package:marketplace/screen/home/component/iklan.dart';
import 'package:marketplace/screen/home/component/kategory_card.dart';
import 'package:marketplace/screen/home/component/produk_populer.dart';
import 'package:marketplace/screen/home/component/rekomendasi.dart';
import 'package:marketplace/size_config.dart';

import 'search_bar.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getPropertionateScreenWidth(10)),
            homeHeader(),
            SizedBox(height: getPropertionateScreenWidth(25)),
            categoryMenu(),
            SizedBox(height: getPropertionateScreenWidth(25)),
            iklan(),
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
