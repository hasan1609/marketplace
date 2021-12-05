import 'package:flutter/material.dart';
import 'package:marketplace/model/Produk.dart';
import 'package:marketplace/screen/detail/component/deskripsi_produk.dart';
import 'package:marketplace/screen/detail/component/gambar_produk.dart';
import 'package:marketplace/screen/detail/component/warna_dot.dart';
import 'package:marketplace/size_config.dart';

class Body extends StatelessWidget {
  final Produk produk;

  const Body({Key? key, required this.produk}) : super(key: key);
  // bottomsheet

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          produkGambar(produk: produk),
          roundedContainerDetail(
            color: Colors.white,
            widget: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getPropertionateScreenWidth(22)),
              child: Column(
                children: [
                  deskripsiProduk(
                    produk: produk,
                    pressSeeMore: () {},
                  ),
                  roundedContainerDetail(
                    color: Color(0xfff6f7f9),
                    widget: warnaDost(produk: produk),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: getPropertionateScreenWidth(20),
          )
        ],
      ),
    );
  }
}

class roundedContainerDetail extends StatelessWidget {
  const roundedContainerDetail({
    Key? key,
    required this.color,
    required this.widget,
  }) : super(key: key);

  final Color color;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getPropertionateScreenWidth(20)),
      padding: EdgeInsets.only(top: getPropertionateScreenWidth(20)),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: widget,
    );
  }
}
