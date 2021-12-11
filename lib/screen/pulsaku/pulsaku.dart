import 'package:flutter/material.dart';
import 'package:marketplace/component/bottom_nav_btn_checkout.dart';
import 'package:marketplace/component/card_pulsa.dart';
import 'package:marketplace/component/labeltext.dart';
import 'package:marketplace/model/Pulsa.dart';
import 'package:marketplace/screen/checkouttopup/checkouttopup.dart';
import 'package:marketplace/size_config.dart';

class PulsaKu extends StatefulWidget {
  const PulsaKu({Key? key}) : super(key: key);
  static String routeName = "/pulsaku";

  @override
  State<PulsaKu> createState() => _PulsaKuState();
}

class _PulsaKuState extends State<PulsaKu> {
  int optionSelected = 0;

  // final tesKategori kategori;

  void checkOption(int index) {
    setState(() {
      optionSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pulsa",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(20)),
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
                        hintStyle: TextStyle(
                            fontSize: getPropertionateScreenWidth(12)),
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
                    for (int i = 0; i < PulsaList.length; i++)
                      CardPulsa(
                        press: () => checkOption(i + 1),
                        selected: i + 1 == optionSelected,
                        harga: PulsaList[i].harga,
                        nominal: PulsaList[i].nominal.toString(),
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
      ),
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
}
