import 'package:flutter/material.dart';
import 'package:marketplace/screen/otp/component/body.dart';
import 'package:marketplace/size_config.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Verifikasi",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Body(),
    );
  }
}
