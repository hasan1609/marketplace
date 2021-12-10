import 'package:flutter/material.dart';
import 'package:marketplace/component/subkat_card.dart';
import 'package:marketplace/model/testKategori.dart';
import 'package:marketplace/screen/detailsubkategori/detailsubkat_screen.dart';
import 'package:marketplace/size_config.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.kategori,
  }) : super(key: key);

  final tesKategori kategori;

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
                children: List.generate(
                  kategori.subkategori.length,
                  (index) {
                    return SubkatCard(
                      press: () => Navigator.pushNamed(
                        context,
                        DetailSubkategoriScreen.routeName,
                        // arguments: subkategoriDetailArgumen(
                        //   kategori: tesKategoriList[index],
                        // ),
                      ),
                      gambar: kategori.subkategori[index].gmbr,
                      nama: kategori.subkategori[index].namaSyb,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
