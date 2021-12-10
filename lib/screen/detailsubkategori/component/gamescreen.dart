import 'package:flutter/material.dart';
import 'package:marketplace/component/labeltext.dart';
import 'package:marketplace/size_config.dart';

class HalGame extends StatelessWidget {
  const HalGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(15)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
      ]),
    );
  }
}
