import 'package:flutter/material.dart';
import 'package:marketplace/screen/register/component/body.dart';
import 'package:marketplace/size_config.dart';

class Register extends StatelessWidget {
  static String routeName = "/register";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Daftar",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Body(),
    );
  }
}
