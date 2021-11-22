import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marketplace/model/Cart.dart';
import 'package:marketplace/screen/cart/component/body.dart';
import 'package:marketplace/screen/cart/component/checkout_card.dart';

class Cart extends StatelessWidget {
  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
