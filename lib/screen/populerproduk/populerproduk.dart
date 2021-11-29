import 'package:flutter/material.dart';
import 'package:marketplace/screen/populerproduk/component/body.dart';
import 'package:marketplace/size_config.dart';

class PopulerProduk extends StatelessWidget {
  static String routeName = "/populerproduk";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xfff5f6f9),
      appBar: AppBar(),
      body: Body(),
    );
  }
}
