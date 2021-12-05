import 'package:flutter/material.dart';
import 'package:marketplace/component/bottom_nav_btn_checkout.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/model/SubKategori.dart';
import 'package:marketplace/screen/checkouttopup/checkouttopup.dart';
import 'package:marketplace/screen/topup/component/body.dart';
import 'package:marketplace/size_config.dart';

class Topup extends StatelessWidget {
  static String routeName = "/subkategori";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: subkategoriList.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Top - Up",
            style: TextStyle(color: Colors.black),
          ),
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: secondaryColor,
            labelStyle: TextStyle(
                color: Colors.black,
                fontSize: getPropertionateScreenWidth(14),
                fontWeight: FontWeight.w600),
            tabs: [
              Tab(
                text: 'Pulsa',
              ),
              Tab(
                text: 'Paket Data',
              ),
              Tab(
                text: 'E-Wallet',
              ),
              Tab(
                text: 'Games',
              ),
            ],
          ),
        ),
        body: Body(),
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