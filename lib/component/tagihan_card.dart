import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/size_config.dart';

class TagihanCard extends StatelessWidget {
  const TagihanCard({
    Key? key,
    this.width = 140,
    required this.press,
    required this.harga,
    required this.nominal,
  }) : super(key: key);

  final double width, harga, nominal;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(
          getPropertionateScreenWidth(10),
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).dividerColor),
        ),
        child: SizedBox(
          width: getPropertionateScreenWidth(width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${nominal}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getPropertionateScreenWidth(18),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Harga : ${harga}",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: getPropertionateScreenWidth(13),
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
