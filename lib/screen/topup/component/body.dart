import 'package:flutter/material.dart';
import 'package:marketplace/screen/topup/component/hal_ewallet.dart';
import 'package:marketplace/screen/topup/component/hal_game.dart';
import 'package:marketplace/screen/topup/component/hal_paketdata.dart';
import 'package:marketplace/screen/topup/component/hal_pulsa.dart';
import 'package:marketplace/screen/topup/component/subkattop.dart';
import 'package:marketplace/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        HalPulsa(),
        HalPaketData(),
        HalEwallet(),
        HalGame(),
      ],
    );
  }
}
