import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:marketplace/component/bottom_nav_btn_checkout.dart';
=======
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace/component/bottom_nav_btn_checkout.dart';
import 'package:marketplace/component/card_pulsa.dart';
import 'package:marketplace/component/labeltext.dart';
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
import 'package:marketplace/model/testKategori.dart';
import 'package:marketplace/screen/checkouttopup/checkouttopup.dart';
import 'package:marketplace/screen/detailsubkategori/component/body.dart';
import 'package:marketplace/screen/detailsubkategori/component/ewalletscreen.dart';
import 'package:marketplace/screen/detailsubkategori/component/gamescreen.dart';
import 'package:marketplace/screen/detailsubkategori/component/paketdatascreen.dart';
import 'package:marketplace/screen/detailsubkategori/component/pulsascreen.dart';
<<<<<<< HEAD

class DetailSubkategoriScreen extends StatelessWidget {
  static String routeName = "/detailsubkategori";

  @override
=======
import 'package:marketplace/size_config.dart';

class DetailSubkategoriScreen extends StatefulWidget {
  static String routeName = "/detailsubkategori";

  @override
  State<DetailSubkategoriScreen> createState() =>
      _DetailSubkategoriScreenState();
}

class _DetailSubkategoriScreenState extends State<DetailSubkategoriScreen> {
  int optionSelected = 0;
  // final tesKategori kategori;

  void checkOption(int index) {
    setState(() {
      optionSelected = index;
    });
  }

  @override
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
  Widget build(BuildContext context) {
    final subkategoriDetailArgumen detailsubarguments =
        ModalRoute.of(context)!.settings.arguments as subkategoriDetailArgumen;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          detailsubarguments.kategori.namaSyb,
          // "tes",
          style: TextStyle(color: Colors.black),
        ),
      ),
      // body: Body(),
<<<<<<< HEAD
      body: HalEwallet(),
      // HalPulsa(),
      // HalPaketData(),
      // HalGames()
=======
      body: HalPulsa(detailsubarguments),
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b

      // body: (tesKategoriList.isNotEmpty) ? Container() : Container()
      bottomNavigationBar: CustomBottomNavBarCheckout(
        text: "Beli",
        press: () {
          Navigator.pushNamed(
            context,
            CheckoutTopup.routeName,
          );
        },
      ),
    );
  }
<<<<<<< HEAD
=======

  Container HalPulsa(subkategoriDetailArgumen detailsubarguments) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          Container(
            child: Form(
              child: Column(
                children: [
                  labelInputText(
                    text1: "Masukkan No.Hp",
                  ),
                  SizedBox(
                    height: getPropertionateScreenWidth(10),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "No. Hp",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle:
                          TextStyle(fontSize: getPropertionateScreenWidth(12)),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: getPropertionateScreenWidth(20),
                        vertical: getPropertionateScreenWidth(9),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          Text(
            "Pilih Nominal",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: getPropertionateScreenWidth(16)),
          ),
          SizedBox(
            height: getPropertionateScreenHeight(10),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: getPropertionateScreenWidth(4)),
              child: GridView.count(
                childAspectRatio: 2.5,
                crossAxisSpacing: getPropertionateScreenWidth(10),
                mainAxisSpacing: getPropertionateScreenWidth(10),
                crossAxisCount: 2,
                children: [
                  for (int i = 0;
                      i < detailsubarguments.kategori.detailSubKatgori.length;
                      i++)
                    CardPulsa(
                      press: () => checkOption(i + 1),
                      selected: i + 1 == optionSelected,
                      harga:
                          detailsubarguments.kategori.detailSubKatgori[i].harga,
                      nominal:
                          detailsubarguments.kategori.detailSubKatgori[i].nama,
                    )
                ],
              ),
            ),
          ),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
        ],
      ),
    );
  }
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
}

class subkategoriDetailArgumen {
  final testSubKategori kategori;

  subkategoriDetailArgumen({required this.kategori});
}
