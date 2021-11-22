import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/model/produk.dart';
import 'package:marketplace/size_config.dart';

class produkSeller extends StatelessWidget {
  const produkSeller({
    Key? key,
    this.width = 140,
    this.aspecRatio = 1.02,
    required this.produk,
    required this.press,
  }) : super(key: key);

  final double width, aspecRatio;
  final Produk produk;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: double.infinity,
        height: getPropertionateScreenWidth(150),
        margin: EdgeInsets.only(bottom: getPropertionateScreenWidth(20)),
        padding: EdgeInsets.all(getPropertionateScreenWidth(20)),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              offset: Offset(2, 0),
              color: accentColor3.withOpacity(0.3),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: aspecRatio,
              child: Container(
                padding: EdgeInsets.all(getPropertionateScreenWidth(20)),
                decoration: BoxDecoration(
                  color: secondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(produk.gambar[0]),
              ),
            ),
            SizedBox(
              width: getPropertionateScreenWidth(4),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  produk.judul,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  maxLines: 2,
                ),
                Text(
                  "${produk.stok}",
                  style: TextStyle(
                    fontSize: getPropertionateScreenWidth(18),
                    fontWeight: FontWeight.w600,
                    color: primaryColor,
                  ),
                ),
                Text(
                  "${produk.harga}",
                  style: TextStyle(
                    fontSize: getPropertionateScreenWidth(18),
                    fontWeight: FontWeight.w600,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
