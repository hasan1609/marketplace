import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/size_config.dart';

class SubkatCard extends StatelessWidget {
  const SubkatCard({
    Key? key,
    this.width = 140,
    required this.press,
    required this.gambar,
    required this.nama,
  }) : super(key: key);

  final double width;
  final String nama, gambar;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(
          getPropertionateScreenWidth(10),
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).dividerColor),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 1.9,
              child: Container(
                padding: EdgeInsets.all(getPropertionateScreenWidth(10)),
                child: SvgPicture.asset(gambar),
              ),
            ),
            SizedBox(
              height: getPropertionateScreenWidth(5),
            ),
            Text(
              nama,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: getPropertionateScreenWidth(12)),
            )
          ],
        ),
      ),
    );
  }
}
