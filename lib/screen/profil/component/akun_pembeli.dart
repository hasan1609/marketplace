import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/auth_sercives.dart';
import 'package:marketplace/component/logout.dart';
import 'package:marketplace/component/pusatbantuan.dart';
import 'package:marketplace/component/saldo.dart';
import 'package:marketplace/screen/home/home.dart';
import 'package:marketplace/screen/login/login.dart';
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
    final User? user = FirebaseAuth.instance.currentUser;
    final Stream<DocumentSnapshot<Map<String, dynamic>>> firestore =
        FirebaseFirestore.instance
            .collection('Users')
            .doc(user!.uid)
            .snapshots();

    return Container(
      margin: EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(20)),
      child: Column(
        children: [
          SizedBox(
            height: getPropertionateScreenWidth(20),
          ),
          StreamBuilder(
            stream: firestore,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                if (user.emailVerified.toString() == 'false') {
                  return Container(
                    child: profilFoto(
                        nama: snapshot.data['name'],
                        text: 'Belum Verifikasi',
                        foto: const AssetImage("assets/images/profile.jpg")),
                  );
                } else {
                  return Container(
                    child: profilFoto(
                        nama: snapshot.data['name'],
                        text: 'Terverifikasi',
                        foto: const AssetImage("assets/images/profile.jpg")),
                  );
                }
              } else {
                return Text('Tidak Ada Data');
              }
            },
          ),
          // profilFoto(
          //   nama: "Wafi Elek",
          //   text: "Verified Acoount",
          //   foto: AssetImage("assets/images/profile.jpg"),
          // ),
          SizedBox(
            height: getPropertionateScreenWidth(20),
          ),
          StreamBuilder(
            stream: firestore,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return Container(
                  child: Saldo(
                      saldoKoin: snapshot.data['coin'],
                      saldoUang: snapshot.data['balance']),
                );
              } else {
                return Text('Tidak Ada Data');
              }
            },
          ),
          //  Saldo(saldoKoin: "1.000.000.000", saldoUang: "10.000.000.000"),
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
          logOut(
            press: () {
              AuthService().logout();
              Navigator.pushNamed(context, Login.routeName);
            },
          ),
        ],
      ),
    );
  }
}
