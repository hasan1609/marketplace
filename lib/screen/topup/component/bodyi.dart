import 'package:flutter/material.dart';
import 'package:marketplace/component/subkategorimenu.dart';
import 'package:marketplace/model/Kategori.dart';
import 'package:marketplace/model/SubKategori.dart';
import 'package:marketplace/size_config.dart';

class Bodyi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getPropertionateScreenWidth(20),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getPropertionateScreenWidth(25)),
            child: GridView.builder(
              itemCount: subkategoriList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: getPropertionateScreenWidth(20),
                crossAxisSpacing: getPropertionateScreenWidth(20),
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => SubKategricard(
                subkategori: subkategoriList[index],
                press: () {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}
