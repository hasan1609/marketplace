import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketplace/screen/ppob/expandall/expandall.dart';
import 'package:marketplace/screen/ppob/tagihan/tagihanku.dart';
import 'package:marketplace/screen/ppob/topup/tupupku.dart';
import 'package:marketplace/screen/produk/produk_screen.dart';
import 'package:marketplace/size_config.dart';

class categoryMenu extends StatelessWidget {
  const categoryMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, TopupKu.routeName),
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
                      child: SvgPicture.asset("assets/icons/Pulsa.svg"),
                    ),
                  ),
                  SizedBox(
                    height: getPropertionateScreenWidth(5),
                  ),
                  Text(
                    "Top-Up",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: getPropertionateScreenWidth(10)),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            // onTap: () => Navigator.pushNamed(context, Tagihan.routeName),
            onTap: () => Navigator.pushNamed(context, TagihanKu.routeName),

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
                      child: SvgPicture.asset("assets/icons/Tagihan.svg"),
                    ),
                  ),
                  SizedBox(
                    height: getPropertionateScreenWidth(5),
                  ),
                  Text(
                    "Tagihan",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: getPropertionateScreenWidth(10)),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, ProdukScreen.routeName),
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
                      child: SvgPicture.asset("assets/icons/Elektronik.svg"),
                    ),
                  ),
                  SizedBox(
                    height: getPropertionateScreenWidth(5),
                  ),
                  Text(
                    "Produk",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: getPropertionateScreenWidth(10)),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, ExpandAll.routeName),
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
                      child: SvgPicture.asset("assets/icons/More.svg"),
                    ),
                  ),
                  SizedBox(
                    height: getPropertionateScreenWidth(5),
                  ),
                  Text(
                    "Lebih banyak",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: getPropertionateScreenWidth(10)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
