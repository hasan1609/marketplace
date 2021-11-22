import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/screen/introduction/intro.dart';
import 'package:marketplace/size_config.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splashscreen";

  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashStart();
  }

  splashStart() async {
    var duration = Duration(seconds: 10);
    return Timer(duration, () {
      Navigator.pushNamed(context, Introduction.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Image.asset(
          "assets/images/splash_2.png",
          width: getPropertionateScreenWidth(220),
        ),
      ),
    );
  }
}
