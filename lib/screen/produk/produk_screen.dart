import 'package:flutter/material.dart';
import 'package:marketplace/screen/produk/component/body.dart';
import 'package:marketplace/size_config.dart';

class ProdukScreen extends StatefulWidget {
  ProdukScreen({Key? key}) : super(key: key);
  static String routeName = "/produk";

  @override
  _ProdukScreenState createState() => _ProdukScreenState();
}

class _ProdukScreenState extends State<ProdukScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Semua Produk",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Body(),
    );
  }
}
