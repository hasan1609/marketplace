import 'package:flutter/material.dart';
import 'package:marketplace/screen/addproduk/component/body.dart';
import 'package:marketplace/size_config.dart';

class addProduk extends StatelessWidget {
  static String routeName = "/addproduk";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
    );
  }
}
