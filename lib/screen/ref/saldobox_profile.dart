import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/size_config.dart';

class saldoBoxProfile extends StatelessWidget {
  const saldoBoxProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getPropertionateScreenWidth(130),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            offset: Offset(2, 0),
            color: accentColor3.withOpacity(0.3),
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getPropertionateScreenWidth(12)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Dana Marketku",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getPropertionateScreenWidth(16),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: getPropertionateScreenWidth(7),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        height: getPropertionateScreenWidth(30),
                        width: getPropertionateScreenWidth(30),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: primaryColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Container(
                            height: getPropertionateScreenWidth(15),
                            width: getPropertionateScreenWidth(15),
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  width: getPropertionateScreenWidth(4),
                                  color: Colors.white,
                                ),
                                color: primaryColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getPropertionateScreenWidth(8),
                      ),
                      Text(
                        "1.000.0000",
                        style: greenTextFont.copyWith(
                          fontSize: getPropertionateScreenWidth(12),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: getPropertionateScreenWidth(6),
                      ),
                      Text(
                        "Koin",
                        style: greyTextFont.copyWith(
                          fontSize: getPropertionateScreenWidth(12),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        height: getPropertionateScreenWidth(30),
                        width: getPropertionateScreenWidth(30),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/saldo.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getPropertionateScreenWidth(8),
                      ),
                      Text(
                        "Rp. 0",
                        style: blackTextFont.copyWith(
                          fontSize: getPropertionateScreenWidth(12),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: getPropertionateScreenWidth(6),
                      ),
                      Text(
                        "Saldo",
                        style: greyTextFont.copyWith(
                          fontSize: getPropertionateScreenWidth(12),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
