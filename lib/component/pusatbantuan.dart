import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/size_config.dart';

class pusatBantuan extends StatelessWidget {
  const pusatBantuan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getPropertionateScreenWidth(100),
      width: double.infinity,
      padding: EdgeInsets.all(getPropertionateScreenWidth(8)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            offset: Offset(2, 0),
            color: accentColor3.withOpacity(0.3),
          ),
        ],
        border: Border.all(
          width: getPropertionateScreenWidth(2),
          color: Colors.white,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Kebijakan privasi",
              style: TextStyle(
                fontSize: getPropertionateScreenWidth(14),
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Syarat & Ketentuan",
              style: TextStyle(
                fontSize: getPropertionateScreenWidth(14),
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Bantuan",
              style: TextStyle(
                fontSize: getPropertionateScreenWidth(14),
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
