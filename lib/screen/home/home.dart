import 'package:flutter/material.dart';
import 'package:marketplace/screen/home/component/body.dart';

class Home extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
