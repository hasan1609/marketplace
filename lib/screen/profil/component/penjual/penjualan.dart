import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/size_config.dart';

class Penjualan extends StatelessWidget {
  const Penjualan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getPropertionateScreenWidth(128),
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
      child: Padding(
        padding: EdgeInsets.zero,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: getPropertionateScreenWidth(60),
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        padding:
                            EdgeInsets.all(getPropertionateScreenWidth(10)),
                        decoration: BoxDecoration(
                          color: Color(0xFFDFF5FF),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SvgPicture.asset("assets/icons/Gift Icon.svg"),
                      ),
                    ),
                    SizedBox(
                      height: getPropertionateScreenWidth(10),
                    ),
                    Text(
                      "Pesanan baru",
                      style: TextStyle(
                          fontSize: getPropertionateScreenWidth(12),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: getPropertionateScreenWidth(60),
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        padding:
                            EdgeInsets.all(getPropertionateScreenWidth(10)),
                        decoration: BoxDecoration(
                          color: Color(0xFFDFF5FF),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SvgPicture.asset("assets/icons/Gift Icon.svg"),
                      ),
                    ),
                    SizedBox(
                      height: getPropertionateScreenWidth(10),
                    ),
                    Text(
                      "Siap kirim",
                      style: TextStyle(
                          fontSize: getPropertionateScreenWidth(12),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: getPropertionateScreenWidth(60),
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        padding:
                            EdgeInsets.all(getPropertionateScreenWidth(10)),
                        decoration: BoxDecoration(
                          color: Color(0xFFDFF5FF),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SvgPicture.asset("assets/icons/Gift Icon.svg"),
                      ),
                    ),
                    SizedBox(
                      height: getPropertionateScreenWidth(10),
                    ),
                    Text(
                      "Riwayat penjualan",
                      style: TextStyle(
                          fontSize: getPropertionateScreenWidth(12),
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
