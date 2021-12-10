import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/size_config.dart';

class CardEwallet extends StatelessWidget {
  const CardEwallet({
    Key? key,
    this.width = 140,
    required this.press,
    required this.selected,
    required this.gambar,
    required this.text,
  }) : super(key: key);

  final double width;
  final VoidCallback press;
  final bool selected;
  final String gambar, text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        width: getPropertionateScreenWidth(140),
        padding: EdgeInsets.symmetric(
            horizontal: getPropertionateScreenWidth(10),
            vertical: getPropertionateScreenWidth(5)),
        margin:
            EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(3)),
        decoration: BoxDecoration(
          border: Border.all(
            color: selected ? primaryColor : Colors.transparent,
            width: selected ? 3 : 0,
          ),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Image.asset(
                  gambar,
                  width: getPropertionateScreenWidth(150),
                  fit: BoxFit.fill,
                  height: getPropertionateScreenWidth(70),
                ),
              ),
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
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
