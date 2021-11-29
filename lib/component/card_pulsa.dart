import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/model/Pulsa.dart';
import 'package:marketplace/size_config.dart';

class CardPulsa extends StatelessWidget {
  const CardPulsa({
    Key? key,
    this.width = 140,
    required this.pulsa,
    required this.press,
  }) : super(key: key);

  final double width;
  final Pulsa pulsa;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: getPropertionateScreenWidth(140),
        padding: EdgeInsets.symmetric(
            horizontal: getPropertionateScreenWidth(10),
            vertical: getPropertionateScreenWidth(5)),
        margin:
            EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(3)),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              offset: Offset(2, 0),
              color: accentColor3.withOpacity(0.3),
            ),
          ],
        ),
        child: SizedBox(
          width: getPropertionateScreenWidth(width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${pulsa.nominal}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getPropertionateScreenWidth(18),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Harga : ${pulsa.harga}",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: getPropertionateScreenWidth(14),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
