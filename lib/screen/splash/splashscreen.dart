import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/screen/home/home.dart';
import 'package:marketplace/screen/introduction/intro.dart';
import 'package:marketplace/size_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    final jembatan = await SharedPreferences.getInstance();

    if (jembatan.containsKey('myData')) {
      final myData =
          json.decode(jembatan.getString('myData')!) as Map<String, dynamic>;

      String counter = myData["counter"];

      print(counter);
      print('jika ada user langsung direct home');
      var duration = Duration(seconds: 3);
      return Timer(duration, () {
        Navigator.pushReplacementNamed(context, Home.routeName);
      });
    } else {
      print('jika tidak ada user langsung direct intro');
      var duration = Duration(seconds: 3);
      return Timer(duration, () {
        Navigator.pushReplacementNamed(context, Introduction.routeName);
      });
    }
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
