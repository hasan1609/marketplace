import 'package:flutter/material.dart';
import 'package:marketplace/screen/home/component/body.dart';
import 'package:marketplace/size_config.dart';

class Home extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Body(),
    );
  }
}
