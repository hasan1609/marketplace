import 'package:flutter/material.dart';
import 'package:marketplace/component/default_button.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/size_config.dart';

class tokoKosong extends StatelessWidget {
  const tokoKosong({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: getPropertionateScreenWidth(30),
          ),
          Container(
            height: getPropertionateScreenWidth(100),
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage("assets/images/toko_member.png")),
            ),
          ),
          SizedBox(
            height: getPropertionateScreenWidth(10),
          ),
          Text(
            "Upsssss !",
            style: blackTextFont.copyWith(
              fontSize: getPropertionateScreenWidth(16),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: getPropertionateScreenWidth(10),
          ),
          Text(
            "Anda belum punya toko",
            style: greyTextFont.copyWith(
              fontSize: getPropertionateScreenWidth(14),
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: getPropertionateScreenWidth(10),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getPropertionateScreenWidth(50)),
            child: DefaultButton(
              press: () {},
              text: "Daftar Disini",
            ),
          ),
        ],
      ),
    );
  }
}
