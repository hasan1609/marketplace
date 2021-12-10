import 'package:flutter/material.dart';
import 'package:marketplace/component/labeltext.dart';
import 'package:marketplace/component/paketdata_card.dart';
import 'package:marketplace/model/Paketdata.dart';
import 'package:marketplace/size_config.dart';

class HalPaketData extends StatefulWidget {
  const HalPaketData({Key? key}) : super(key: key);

  @override
  State<HalPaketData> createState() => _HalPaketDataState();
}

class _HalPaketDataState extends State<HalPaketData> {
  @override
  Widget build(BuildContext context) {
    int optionSelected = -1;

    // void checkOption(int i) {
    //   setState(() {
    //     optionSelected = i;
    //   });
    // }

    return Container(
      margin: EdgeInsets.only(bottom: getPropertionateScreenWidth(20)),
      child: Column(
        children: [
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: getPropertionateScreenWidth(20)),
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
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getPropertionateScreenWidth(10)),
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: getPropertionateScreenWidth(10)),
                  );
                },
                itemCount: PaketDataList.length,
                itemBuilder: (context, index) => PaketDataCard(
                  paketData: PaketDataList[index],
                  press: () {
                    setState(() {
                      if (optionSelected != null) {
                        optionSelected = index;
                      }
                    });
                  },
                  selected: index == optionSelected,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
