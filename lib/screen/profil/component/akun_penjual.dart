import 'package:flutter/material.dart';
import 'package:marketplace/component/default_button.dart';
import 'package:marketplace/component/profilfoto.dart';
import 'package:marketplace/component/saldo.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/screen/profil/component/penjual/penjualan.dart';
import 'package:marketplace/screen/tokoproduk/tokoproduk.dart';

import 'package:marketplace/size_config.dart';

class AkunPenjual extends StatelessWidget {
  const AkunPenjual({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // jika tidak ada toko maka tampilkan
    // return tokoKosong();
    // jika ada
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(20)),
      child: Column(
        children: [
          SizedBox(
            height: getPropertionateScreenWidth(20),
          ),
          profilFoto(
            nama: "toko Wafi Elek",
            text: "150 barang terjual",
            foto: AssetImage("assets/images/profile.jpg"),
          ),
          SizedBox(
            height: getPropertionateScreenWidth(20),
          ),
          Saldo(
            saldoKoin: "1.000.000.000",
            saldoUang: "10.000.000.000",
          ),
          SizedBox(
            height: getPropertionateScreenWidth(20),
          ),
          DefaultButton(
            text: "Produk",
            press: () => Navigator.pushNamed(context, tokoProduk.routeName),
          ),
          SizedBox(
            height: getPropertionateScreenWidth(20),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Transaksi Penjualan",
              style: blackTextFont.copyWith(
                fontSize: getPropertionateScreenWidth(16),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: getPropertionateScreenWidth(10),
          ),
          Penjualan(),
        ],
      ),
    );
  }
}
