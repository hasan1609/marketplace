import 'package:flutter/material.dart';
import 'package:marketplace/model/produk.dart';
import 'package:marketplace/screen/detail/component/custom_bar.dart';
import 'package:marketplace/screen/detail/component/body.dart';

class Detail extends StatelessWidget {
  static String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    final produkDetailArgumen arguments =
        ModalRoute.of(context)!.settings.arguments as produkDetailArgumen;
    return Scaffold(
      backgroundColor: Color(0xfff5f6f9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(),
      ),
      body: Body(produk: arguments.produk),
    );
  }
}

class produkDetailArgumen {
  final Produk produk;

  produkDetailArgumen({required this.produk});
}
