import 'package:flutter/material.dart';
import 'package:marketplace/component/bottom_nav_btn_checkout.dart';
import 'package:marketplace/screen/checkouttopup/component/body.dart';
import 'package:marketplace/size_config.dart';

class CheckoutTopup extends StatelessWidget {
  static String routeName = "/checkouttopup";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Checkout",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Body(),
      bottomNavigationBar:
          CustomBottomNavBarCheckout(press: () {}, text: "Bayar"),
    );
  }
}
