import 'package:flutter/material.dart';
import 'package:marketplace/screen/login/component/body.dart';
import 'package:marketplace/size_config.dart';

class Login extends StatelessWidget {
  static String routeName = "/login";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Masuk",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Body(),
    );
  }
}
