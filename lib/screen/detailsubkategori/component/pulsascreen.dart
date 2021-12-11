import 'package:flutter/material.dart';
import 'package:marketplace/component/card_pulsa.dart';
import 'package:marketplace/component/labeltext.dart';
import 'package:marketplace/model/Pulsa.dart';
<<<<<<< HEAD
=======
import 'package:marketplace/model/testKategori.dart';
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
import 'package:marketplace/size_config.dart';

class HalPulsa extends StatefulWidget {
  const HalPulsa({Key? key}) : super(key: key);

  @override
  State<HalPulsa> createState() => _HalPulsaState();
}

class _HalPulsaState extends State<HalPulsa> {
  int optionSelected = 0;

<<<<<<< HEAD
=======
  // final tesKategori kategori;

>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
  void checkOption(int index) {
    setState(() {
      optionSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
=======
    var detailsubarguments;
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
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
<<<<<<< HEAD
                  for (int i = 0; i < PulsaList.length; i++)
                    CardPulsa(
                      press: () => checkOption(i + 1),
                      selected: i + 1 == optionSelected,
                      harga: PulsaList[i].harga,
                      nominal: PulsaList[i].nominal,
=======
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
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
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
}
