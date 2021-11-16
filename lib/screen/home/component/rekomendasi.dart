import 'package:flutter/material.dart';
import 'package:marketplace/screen/home/component/section_bar.dart';
import 'package:marketplace/size_config.dart';

class Rekomendasi extends StatelessWidget {
  const Rekomendasi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sectionBar(
          text: "Rekomendasi",
          press: () {},
        ),
        SizedBox(height: getPropertionateScreenWidth(10)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              rekomendasiCard(
                image: "assets/images/Image Banner 2.png",
                kategori: "Elektronik",
                numOfBrand: 100,
                press: () {},
              ),
              rekomendasiCard(
                image: "assets/images/Image Banner 3.png",
                kategori: "Pakaian",
                numOfBrand: 1000,
                press: () {},
              ),
              rekomendasiCard(
                image: "assets/images/Image Banner 2.png",
                kategori: "Peralatan Rumah",
                numOfBrand: 20,
                press: () {},
              ),
              SizedBox(width: getPropertionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class rekomendasiCard extends StatelessWidget {
  const rekomendasiCard({
    Key? key,
    required this.kategori,
    required this.image,
    required this.numOfBrand,
    required this.press,
  }) : super(key: key);

  final String kategori, image;
  final int numOfBrand;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getPropertionateScreenWidth(20)),
      child: SizedBox(
        width: getPropertionateScreenWidth(242),
        height: getPropertionateScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff343434).withOpacity(0.4),
                      Color(0xff343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getPropertionateScreenWidth(15),
                  vertical: getPropertionateScreenWidth(10),
                ),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: "$kategori\n",
                        style: TextStyle(
                          fontSize: getPropertionateScreenWidth(18),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "$numOfBrand brand",
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
