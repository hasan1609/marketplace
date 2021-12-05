import 'package:flutter/material.dart';
import 'package:marketplace/component/tagihan_card.dart';
import 'package:marketplace/model/Pulsa.dart';
import 'package:marketplace/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: getPropertionateScreenWidth(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: getPropertionateScreenWidth(10),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: getPropertionateScreenWidth(4)),
              child: GridView.count(
                childAspectRatio: 1,
                crossAxisCount: 3,
                children: [
                  for (int i = 0; i < PulsaList.length; i++)
                    TagihanCard(
                      press: () {},
                      harga: PulsaList[i].harga,
                      nominal: PulsaList[i].nominal,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
