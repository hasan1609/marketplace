import 'package:flutter/material.dart';
import 'package:marketplace/component/logout.dart';
import 'package:marketplace/component/pusatbantuan.dart';
import 'package:marketplace/component/saldo.dart';
import 'package:marketplace/screen/profil/component/pembeli/profil_transaksi_card.dart';
import 'package:marketplace/component/profilfoto.dart';
import 'package:marketplace/screen/profil/component/pembeli/ulasanprofil.dart';

import 'package:marketplace/size_config.dart';

import '../../../constant.dart';

class AkunPembeli extends StatelessWidget {
  const AkunPembeli({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(20)),
      child: Column(
        children: [
          SizedBox(
            height: getPropertionateScreenWidth(20),
          ),
          profilFoto(
            nama: "Wafi Elek",
            text: "Verified Acoount",
            foto: AssetImage("assets/images/profile.jpg"),
          ),
          SizedBox(
            height: getPropertionateScreenWidth(20),
          ),
          Saldo(saldoKoin: "1.000.000.000", saldoUang: "10.000.000.000"),
          SizedBox(
            height: getPropertionateScreenWidth(20),
          ),
          // NOTE: Transaksi
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Transaksi",
              style: blackTextFont.copyWith(
                fontSize: getPropertionateScreenWidth(16),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: getPropertionateScreenWidth(10),
          ),
          cardtransaksiProfil(),
          SizedBox(
            height: getPropertionateScreenWidth(20),
          ),
          Divider(
            height: 20,
            thickness: 1,
            color: accentColor3.withOpacity(0.5),
          ),
          ulasanProfil(),
          Divider(
            height: 20,
            thickness: 1,
            color: accentColor3.withOpacity(0.5),
          ),
          SizedBox(
            height: getPropertionateScreenWidth(20),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Pusat Bantuan",
              style: blackTextFont.copyWith(
                fontSize: getPropertionateScreenWidth(16),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: getPropertionateScreenWidth(10),
          ),
          pusatBantuan(),
          SizedBox(
            height: getPropertionateScreenWidth(10),
          ),
          logOut(),
        ],
      ),
    );
  }
}
