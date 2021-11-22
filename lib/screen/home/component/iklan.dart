import 'package:flutter/material.dart';
import 'package:marketplace/size_config.dart';

class Iklan extends StatelessWidget {
  const Iklan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getPropertionateScreenWidth(20),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: getPropertionateScreenWidth(20),
          vertical: getPropertionateScreenWidth(15)),
      width: double.infinity,
      height: getPropertionateScreenWidth(90),
      decoration: BoxDecoration(
        color: Color(0xff4a3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          text: "Promo bosss\n",
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
                text: "Diskon 100%",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
