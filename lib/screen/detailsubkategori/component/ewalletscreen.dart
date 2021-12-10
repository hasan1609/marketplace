import 'package:flutter/material.dart';
import 'package:marketplace/component/cardewallet.dart';
import 'package:marketplace/component/labeltext.dart';
import 'package:marketplace/model/Ewallet.dart';
import 'package:marketplace/size_config.dart';

class HalEwallet extends StatefulWidget {
  const HalEwallet({Key? key}) : super(key: key);

  @override
  State<HalEwallet> createState() => _HalEwalletState();
}

class _HalEwalletState extends State<HalEwallet> {
  int optionSelected = 0;

  void checkOption(int index) {
    setState(() {
      optionSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(15)),
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
                    text1: "Masukkan Nominal",
                  ),
                  SizedBox(
                    height: getPropertionateScreenWidth(10),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Nominal",
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
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: getPropertionateScreenWidth(4)),
              child: GridView.count(
                childAspectRatio: 1.52,
                crossAxisSpacing: getPropertionateScreenWidth(10),
                mainAxisSpacing: getPropertionateScreenWidth(10),
                crossAxisCount: 2,
                children: [
                  for (int i = 0; i < ewalletList.length; i++)
                    CardEwallet(
                      press: () => checkOption(i + 1),
                      selected: i + 1 == optionSelected,
                      gambar: ewalletList[i].gambar,
                      text: ewalletList[i].nama,
                    )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
