import 'package:flutter/material.dart';
import 'package:marketplace/component/subkat_card.dart';
import 'package:marketplace/model/testKategori.dart';
import 'package:marketplace/screen/detailsubkategori/detailsubkat_screen.dart';
import 'package:marketplace/screen/subkategori/component/body.dart';
import 'package:marketplace/size_config.dart';

import '../../constant.dart';

class subKategoriScreen extends StatefulWidget {
  const subKategoriScreen({Key? key}) : super(key: key);
  static String routeName = "/subkategori";

  @override
  State<subKategoriScreen> createState() => _subKategoriScreenState();
}

class _subKategoriScreenState extends State<subKategoriScreen> {
  @override
  Widget build(BuildContext context) {
    final kategoriDetailArgumen subarguments =
        ModalRoute.of(context)!.settings.arguments as kategoriDetailArgumen;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          subarguments.kategori.nama,
          style: TextStyle(color: Colors.black),
        ),
      ),
      // body: Body(),
      body: Container(
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
                    subarguments.kategori.subkategori.length,
                    (index) {
                      return SubkatCard(
                        press: () => Navigator.pushNamed(
                          context,
                          DetailSubkategoriScreen.routeName,
                          arguments: subkategoriDetailArgumen(
                              kategori: subarguments.kategori.subkategori[index]
                              // tesKategoriList
                              //     .subkategori.detailSubKatgori[index],
                              ),
                        ),
                        gambar: subarguments.kategori.subkategori[index].gmbr,
                        nama: subarguments.kategori.subkategori[index].namaSyb,
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // body: Body(
      //   kategori: subarguments.kategori,
      // ),
    );
  }
}

class kategoriDetailArgumen {
  final tesKategori kategori;

  kategoriDetailArgumen({required this.kategori});
}
