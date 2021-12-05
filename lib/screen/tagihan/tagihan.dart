import 'package:flutter/material.dart';
import 'package:marketplace/screen/tagihan/component/body.dart';
import 'package:marketplace/size_config.dart';

class Tagihan extends StatelessWidget {
  static String routeName = "/tagihan";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xfff5f6f9),
      appBar: AppBar(
        title: Text(
          "Tagihan",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Body(),
    );
  }
}
