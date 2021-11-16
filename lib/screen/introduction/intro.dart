import 'package:flutter/material.dart';
import 'package:marketplace/screen/introduction/component/body.dart';
import 'package:marketplace/size_config.dart';

class Introduction extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
