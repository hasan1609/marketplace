import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/model/produk.dart';
import 'package:marketplace/size_config.dart';

class produkCard extends StatelessWidget {
  const produkCard({
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
    return Padding(
      padding: EdgeInsets.only(left: getPropertionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getPropertionateScreenWidth(width),
          child: Column(
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
              const SizedBox(
                height: 3,
              ),
              Text(
                produk.judul,
                style: TextStyle(
                  color: Colors.black,
                ),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${produk.harga}",
                    style: TextStyle(
                      fontSize: getPropertionateScreenWidth(18),
                      fontWeight: FontWeight.w600,
                      color: primaryColor,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(
                        getPropertionateScreenWidth(8),
                      ),
                      width: getPropertionateScreenWidth(28),
                      height: getPropertionateScreenWidth(28),
                      decoration: BoxDecoration(
                        color: produk.favorit
                            ? primaryColor.withOpacity(0.15)
                            : secondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Heart Icon_2.svg",
                        color: produk.favorit
                            ? Color(0xffff48484)
                            : Color(0xffdbdee4),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
