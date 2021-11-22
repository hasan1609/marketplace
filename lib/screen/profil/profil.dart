import 'package:flutter/material.dart';
import 'package:marketplace/component/bottom_nav.dart';
import 'package:marketplace/screen/profil/component/body.dart';
import 'package:marketplace/size_config.dart';

import '../../enum.dart';

class Profile extends StatelessWidget {
  static String routeName = "/profil";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
