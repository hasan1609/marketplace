import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/screen/profil/component/akun_pembeli.dart';
import 'package:marketplace/screen/profil/component/akun_penjual.dart';
import 'package:marketplace/screen/profil/component/profil_header.dart';

import '../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool akunPembeli = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(vertical: getPropertionateScreenHeight(10)),
          child: Column(
            children: [
              SizedBox(
                height: getPropertionateScreenWidth(2),
              ),
              profileBar(),
              SizedBox(
                height: getPropertionateScreenWidth(20),
              ),
              Container(
                height: getPropertionateScreenWidth(30),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: accentColor3.withOpacity(0.3),
                      offset: Offset(0.0, 15),
                      blurRadius: 30,
                      spreadRadius: -10,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                akunPembeli = !akunPembeli;
                              });
                            },
                            child: Container(
                              width: getPropertionateScreenWidth(125),
                              height: double.infinity,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Akun Pembeli",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: getPropertionateScreenWidth(13),
                                      color: !akunPembeli
                                          ? primaryColor
                                          : accentColor3,
                                    ),
                                  ),
                                  Container(
                                    height: getPropertionateScreenWidth(4),
                                    width: double.infinity,
                                    color: !akunPembeli
                                        ? primaryColor
                                        : Colors.transparent,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                akunPembeli = !akunPembeli;
                              });
                            },
                            child: Container(
                              width: getPropertionateScreenWidth(125),
                              height: double.infinity,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Akun Toko",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: getPropertionateScreenWidth(13),
                                      color: akunPembeli
                                          ? primaryColor
                                          : accentColor3,
                                    ),
                                  ),
                                  Container(
                                    height: getPropertionateScreenWidth(4),
                                    width: double.infinity,
                                    color: akunPembeli
                                        ? primaryColor
                                        : Colors.transparent,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              (!akunPembeli) ? AkunPembeli() : AkunPenjual(),
            ],
          ),
        ),
      ),
    );
  }
}
