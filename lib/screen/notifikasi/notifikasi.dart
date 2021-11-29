import 'package:flutter/material.dart';
import 'package:marketplace/screen/notifikasi/component/body.dart';
import 'package:marketplace/size_config.dart';

class Notifikasi extends StatelessWidget {
  static String routeName = "/notifikasi";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Body(),
    );
  }
}
