import 'package:flutter/material.dart';
import 'package:marketplace/component/rounded_icon.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/model/Produk.dart';
import 'package:marketplace/size_config.dart';

class warnaDost extends StatelessWidget {
  const warnaDost({
    Key? key,
    required this.produk,
  }) : super(key: key);

  final Produk produk;

  @override
  Widget build(BuildContext context) {
    int selectedWarna = 3;
    return Row(
      children: [
        ...List.generate(
          produk.warna.length,
          (index) => warnaDot(
            color: produk.warna[index],
            selected: selectedWarna == index,
          ),
        ),
        Spacer(),
        roundedIcon(
          iconData: Icons.remove,
          press: () {},
        ),
        SizedBox(
          width: getPropertionateScreenWidth(15),
        ),
        roundedIcon(
          iconData: Icons.add,
          press: () {},
        ),
      ],
    );
  }
}

class warnaDot extends StatelessWidget {
  const warnaDot({
    Key? key,
    required this.color,
    this.selected = false,
  }) : super(key: key);

  final Color color;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: getPropertionateScreenWidth(40),
      width: getPropertionateScreenWidth(40),
      decoration: BoxDecoration(
        // color: produk.warna[0],
        shape: BoxShape.circle,
        border: Border.all(color: selected ? primaryColor : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
