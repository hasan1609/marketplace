import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/size_config.dart';

class ulasanProfil extends StatelessWidget {
  const ulasanProfil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: accentColor3.withOpacity(0.2),
      child: Container(
        height: getPropertionateScreenWidth(55),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Ulasan",
                  style: TextStyle(
                    fontSize: getPropertionateScreenWidth(14),
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Lihat Ulasan Anda",
                  style: TextStyle(
                    fontSize: getPropertionateScreenWidth(12),
                    color: textColor,
                  ),
                ),
              ],
            ),
            Container(
              child: IconButton(
                splashRadius: 20,
                iconSize: 20,
                highlightColor: Colors.transparent,
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: getPropertionateScreenWidth(18),
                  color: accentColor3,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
