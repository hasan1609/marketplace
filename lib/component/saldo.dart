import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/size_config.dart';

class Saldo extends StatelessWidget {
  const Saldo({
    Key? key,
    required this.saldoKoin,
    required this.saldoUang,
  }) : super(key: key);

  final String saldoKoin, saldoUang;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getPropertionateScreenWidth(70),
      width: double.infinity,
      padding: EdgeInsets.all(getPropertionateScreenWidth(8)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
            width: getPropertionateScreenWidth(2), color: Color(0xFFE4E4E4)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: getPropertionateScreenWidth(22),
                      width: getPropertionateScreenWidth(22),
                      child: SvgPicture.asset("assets/icons/scan.svg")),
                ),
                Text(
                  "Scan",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getPropertionateScreenWidth(12),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getPropertionateScreenWidth(4)),
            child: VerticalDivider(
              width: getPropertionateScreenWidth(2),
              thickness: 1.5,
              color: Color(0xFFE4E4E4),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getPropertionateScreenWidth(4)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: getPropertionateScreenWidth(30),
                      width: getPropertionateScreenWidth(30),
                      child: SvgPicture.asset(
                        "assets/icons/raphael_dollar.svg",
                        width: getPropertionateScreenWidth(25),
                      ),
                    ),
                    SizedBox(
                      width: getPropertionateScreenWidth(8),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Koinku",
                          style: blackTextFont.copyWith(
                            fontSize: getPropertionateScreenWidth(14),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          saldoKoin,
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: getPropertionateScreenWidth(10),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getPropertionateScreenWidth(3)),
            child: VerticalDivider(
              width: getPropertionateScreenWidth(2),
              thickness: 1.5,
              color: Color(0xFFE4E4E4),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getPropertionateScreenWidth(3)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: getPropertionateScreenWidth(30),
                      width: getPropertionateScreenWidth(30),
                      child: Image.asset(
                        "assets/images/promo.png",
                        fit: BoxFit.contain,
                        width: getPropertionateScreenWidth(25),
                      ),
                    ),
                    SizedBox(
                      width: getPropertionateScreenWidth(8),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Saldo",
                          style: blackTextFont.copyWith(
                            fontSize: getPropertionateScreenWidth(14),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          saldoUang,
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: getPropertionateScreenWidth(10),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
