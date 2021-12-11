import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/component/saldo.dart';
<<<<<<< HEAD
import 'package:marketplace/screen/home/component/home_header.dart';
import 'package:marketplace/screen/home/component/kategory_menu.dart';
=======
import 'package:marketplace/screen/home/component/kategory_menuku.dart';
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
import 'package:marketplace/screen/home/component/produk_populer.dart';
import 'package:marketplace/screen/home/component/rekomendasi.dart';
import 'package:marketplace/screen/home/component/iklan.dart';
import 'package:marketplace/size_config.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final User? user = FirebaseAuth.instance.currentUser;
    final Stream<DocumentSnapshot<Map<String, dynamic>>> firestore =
        FirebaseFirestore.instance
            .collection('Users')
            .doc(user!.uid)
            .snapshots();

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getPropertionateScreenWidth(10)),
            homeHeader(),
            SizedBox(height: getPropertionateScreenWidth(25)),
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
                  return Text('DATA TIDAK ADA');
                }
              },
            ),
            // Container(
            //   margin: EdgeInsets.symmetric(
            //       horizontal: getPropertionateScreenWidth(15)),
            //   child: Saldo(
            //     saldoKoin: auth.currentUser!.email.toString(),
            //     saldoUang: "100.000.000.000",
            //   ),
            // ),
            SizedBox(height: getPropertionateScreenWidth(25)),
            categoryMenu(),
            SizedBox(height: getPropertionateScreenWidth(25)),
            Iklan(),
            SizedBox(height: getPropertionateScreenWidth(25)),
            Rekomendasi(),
            SizedBox(height: getPropertionateScreenWidth(25)),
            produkPopuler(),
            SizedBox(height: getPropertionateScreenWidth(25)),
          ],
        ),
      ),
    );
  }
}
