import 'package:flutter/material.dart';
import 'package:marketplace/screen/tokoproduk/component/body.dart';
import 'package:marketplace/screen/tokoproduk/component/custombar.dart';
import 'package:marketplace/size_config.dart';

class tokoProduk extends StatelessWidget {
  static String routeName = "/tokoproduk";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: customBarProduk(),
      body: Body(),
    );
  }
}
