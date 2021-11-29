import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/model/produk.dart';
import 'package:marketplace/screen/selengkapnya/selengkapnya.dart';
import 'package:marketplace/size_config.dart';

class deskripsiProduk extends StatelessWidget {
  const deskripsiProduk({
    Key? key,
    required this.produk,
    required this.pressSeeMore,
  }) : super(key: key);

  final Produk produk;
  final GestureTapCallback pressSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          produk.judul,
          style: TextStyle(
            fontSize: getPropertionateScreenWidth(22),
          ),
        ),
        Text(
          produk.harga.toString(),
          style: TextStyle(
            fontSize: getPropertionateScreenWidth(18),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  produk.rating.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: getPropertionateScreenWidth(14)),
                ),
                const SizedBox(
                  width: 5,
                ),
                SvgPicture.asset("assets/icons/Star Icon.svg")
              ],
            ),
            Container(
              padding: EdgeInsets.all(getPropertionateScreenWidth(15)),
              width: getPropertionateScreenWidth(64),
              decoration: BoxDecoration(
                  color: produk.favorit ? Color(0xffffe6e6) : Color(0xfff5f6f9),
                  shape: BoxShape.circle),
              child: SvgPicture.asset(
                "assets/icons/Heart Icon_2.svg",
                color: produk.favorit ? Color(0xffff4848) : Color(0xffd8dee4),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: getPropertionateScreenWidth(10)),
          child: Text(
            produk.deskripsi,
            maxLines: 3,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: getPropertionateScreenWidth(12),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              selengkapnya.routeName,
            ),
            child: Row(
              children: [
                Text(
                  "Selengkapnya......",
                  style: TextStyle(
                      color: primaryColor, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
