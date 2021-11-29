import 'package:flutter/material.dart';
import 'package:marketplace/screen/detail/component/custom_bar.dart';
import 'package:marketplace/screen/selengkapnya/component/body.dart';
import 'package:marketplace/size_config.dart';

class selengkapnya extends StatelessWidget {
  static String routeName = "/selengkapnya";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xfff5f6f9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(),
      ),
      body: Body(),
    );
  }
}
