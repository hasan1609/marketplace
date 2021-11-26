import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marketplace/component/default_button.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/screen/addproduk/component/form_addproduk.dart';
import 'package:marketplace/screen/tokoproduk/tokoproduk.dart';
import 'package:marketplace/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getPropertionateScreenWidth(17),
      ),
      child: Container(
        child: formAddProduk(),
      ),
    );
  }
}
