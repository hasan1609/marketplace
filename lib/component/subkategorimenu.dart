import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketplace/model/SubKategori.dart';
import 'package:marketplace/size_config.dart';

class SubKategricard extends StatelessWidget {
  const SubKategricard({
    Key? key,
    required this.press,
    required this.subkategori,
  }) : super(key: key);

  final SubKategori subkategori;
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
                child: SvgPicture.asset(subkategori.gambar),
              ),
            ),
            SizedBox(
              height: getPropertionateScreenWidth(5),
            ),
            Text(
              subkategori.nama,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: getPropertionateScreenWidth(10)),
            )
          ],
        ),
      ),
    );
  }
}
