import 'package:flutter/material.dart';
import 'package:marketplace/screen/lupa_password/component/body.dart';
import 'package:marketplace/size_config.dart';

class Forgot extends StatelessWidget {
  static String routeName = "/forgot";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
    );
  }
}
