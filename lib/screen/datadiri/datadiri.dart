import 'package:flutter/material.dart';
import 'package:marketplace/screen/datadiri/component/body.dart';
import 'package:marketplace/size_config.dart';

class DataDiriRegister extends StatelessWidget {
  static String routeName = "/datadiri";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Data Diri",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Body(),
    );
  }
}
