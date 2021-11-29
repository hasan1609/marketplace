import 'package:flutter/material.dart';
import 'package:marketplace/component/card_pulsa.dart';
import 'package:marketplace/component/labeltext.dart';
import 'package:marketplace/model/Pulsa.dart';
import 'package:marketplace/size_config.dart';

class HalPulsa extends StatelessWidget {
  const HalPulsa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: GridView.builder(
                itemCount: PulsaList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: getPropertionateScreenWidth(10),
                  crossAxisSpacing: getPropertionateScreenWidth(10),
                  childAspectRatio: 2.4,
                ),
                itemBuilder: (context, index) => CardPulsa(
                  pulsa: PulsaList[index],
                  press: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
