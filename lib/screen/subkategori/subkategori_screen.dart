import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/screen/subkategori/component/body.dart';
import 'package:marketplace/size_config.dart';

class SubKategoriMenu extends StatelessWidget {
  static String routeName = "/subkategori";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 4,
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
            tabs: <Widget>[
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
      ),
    );
  }
}
