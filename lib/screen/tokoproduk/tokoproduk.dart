import 'package:flutter/material.dart';
import 'package:marketplace/screen/tokoproduk/component/body.dart';

class tokoProduk extends StatelessWidget {
  static String routeName = "/tokoproduk";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
    );
  }
}
