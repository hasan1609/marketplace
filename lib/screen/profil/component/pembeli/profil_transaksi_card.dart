import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/size_config.dart';

class cardtransaksiProfil extends StatelessWidget {
  const cardtransaksiProfil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: getPropertionateScreenWidth(100),
          height: getPropertionateScreenWidth(150),
          padding: EdgeInsets.all(getPropertionateScreenWidth(10)),
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
          child: SizedBox(
            width: getPropertionateScreenWidth(10),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    padding: EdgeInsets.all(getPropertionateScreenWidth(10)),
                    child: SvgPicture.asset("assets/icons/Cart Icon.svg"),
                  ),
                ),
                SizedBox(
                  height: getPropertionateScreenWidth(5),
                ),
                Text(
                  "Menunggu Pembayaran",
                  textAlign: TextAlign.center,
                  style: blackTextFont.copyWith(
                    fontSize: getPropertionateScreenWidth(12),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: getPropertionateScreenWidth(100),
          height: getPropertionateScreenWidth(150),
          padding: EdgeInsets.all(getPropertionateScreenWidth(10)),
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
            width: getPropertionateScreenWidth(10),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    padding: EdgeInsets.all(getPropertionateScreenWidth(10)),
                    child: SvgPicture.asset("assets/icons/Cart Icon.svg"),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Dalam Proses",
                  textAlign: TextAlign.center,
                  style: blackTextFont.copyWith(
                    fontSize: getPropertionateScreenWidth(12),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: getPropertionateScreenWidth(100),
          height: getPropertionateScreenWidth(150),
          padding: EdgeInsets.all(getPropertionateScreenWidth(10)),
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
          child: SizedBox(
            width: getPropertionateScreenWidth(10),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    padding: EdgeInsets.all(getPropertionateScreenWidth(10)),
                    child: SvgPicture.asset("assets/icons/Logo history.svg"),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Riwayat transaksi",
                  textAlign: TextAlign.center,
                  style: blackTextFont.copyWith(
                    fontSize: getPropertionateScreenWidth(12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
