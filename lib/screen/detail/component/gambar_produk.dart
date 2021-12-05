import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/model/Produk.dart';
import 'package:marketplace/size_config.dart';

class produkGambar extends StatefulWidget {
  const produkGambar({
    Key? key,
    required this.produk,
  }) : super(key: key);

  final Produk produk;

  @override
  State<produkGambar> createState() => _produkGambarState();
}

class _produkGambarState extends State<produkGambar> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getPropertionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.produk.gambar[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                widget.produk.gambar.length, (index) => smallPreview(index)),
          ],
        )
      ],
    );
  }

  GestureDetector smallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getPropertionateScreenWidth(15)),
        padding: EdgeInsets.all(getPropertionateScreenHeight(8)),
        height: getPropertionateScreenWidth(48),
        width: getPropertionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color:
                  selectedImage == index ? primaryColor : Colors.transparent),
        ),
        child: Image.asset(widget.produk.gambar[index]),
      ),
    );
  }
}
