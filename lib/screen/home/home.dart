import 'package:flutter/material.dart';
import 'package:marketplace/component/bottom_nav.dart';
import 'package:marketplace/enum.dart';
import 'package:marketplace/screen/home/component/body.dart';
import 'package:marketplace/size_config.dart';

class Home extends StatefulWidget {
  static String routeName = "/home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
