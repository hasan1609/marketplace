import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketplace/model/testKategori.dart';
import 'package:marketplace/size_config.dart';

class kategoriCard extends StatelessWidget {
  const kategoriCard({
    Key? key,
    required this.press,
    required this.kategori,
  }) : super(key: key);

  final tesKategori kategori;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getPropertionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getPropertionateScreenWidth(10)),
                decoration: BoxDecoration(
                  color: Color(0xFFDFF5FF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SvgPicture.asset(kategori.gambar),
              ),
            ),
            SizedBox(
              height: getPropertionateScreenWidth(5),
            ),
            Text(
              kategori.nama,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: getPropertionateScreenWidth(10)),
            )
          ],
        ),
      ),
    );
  }
}
