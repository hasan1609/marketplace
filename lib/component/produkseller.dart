import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketplace/component/default_button.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/model/Produk.dart';
import 'package:marketplace/size_config.dart';

class produkSeller extends StatelessWidget {
  const produkSeller({
    Key? key,
    this.width = 100,
    this.aspecRatio = 1,
    required this.produk,
    required this.press,
  }) : super(key: key);

  final double width, aspecRatio;
  final Produk produk;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getPropertionateScreenWidth(200),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(getPropertionateScreenWidth(5)),
                  decoration: BoxDecoration(
                    color: secondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    produk.gambar[0],
                    width: getPropertionateScreenWidth(100),
                    height: getPropertionateScreenWidth(100),
                  ),
                ),
                SizedBox(
                  width: getPropertionateScreenWidth(10),
                ),
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: getPropertionateScreenWidth(170),
                        child: Text(
                          produk.judul,
                          style: TextStyle(
                            fontSize: getPropertionateScreenWidth(12),
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          maxLines: 2,
                        ),
                      ),
                      Text(
                        "Harga: ${produk.harga}",
                        style: TextStyle(
                          fontSize: getPropertionateScreenWidth(12),
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Stok: ${produk.stok}",
                        style: TextStyle(
                          fontSize: getPropertionateScreenWidth(12),
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Status : ",
                            style: TextStyle(
                              fontSize: getPropertionateScreenWidth(12),
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            produk.status ? "Aktif" : "Arcive",
                            style: TextStyle(
                              fontSize: getPropertionateScreenWidth(12),
                              fontWeight: FontWeight.w600,
                              color: produk.status ? Colors.green : Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getPropertionateScreenWidth(15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: getPropertionateScreenWidth(130),
                height: getPropertionateScreenWidth(35),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: secondaryColor),
                  ),
                  color: Colors.white,
                  onPressed: press as void Function()?,
                  child: Text(
                    "Ubah Status",
                    style: TextStyle(
                      fontSize: getPropertionateScreenWidth(15),
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: getPropertionateScreenWidth(130),
                height: getPropertionateScreenWidth(35),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: secondaryColor),
                  ),
                  color: Colors.white,
                  onPressed: press as void Function()?,
                  child: Text(
                    "Ubah Status",
                    style: TextStyle(
                      fontSize: getPropertionateScreenWidth(15),
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
