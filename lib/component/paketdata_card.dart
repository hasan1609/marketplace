import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/model/Paketdata.dart';
import 'package:marketplace/model/Pulsa.dart';
import 'package:marketplace/size_config.dart';
import 'package:readmore/readmore.dart';

class PaketDataCard extends StatelessWidget {
  const PaketDataCard({
    Key? key,
    this.width = 140,
    required this.paketData,
    required this.press,
    required this.selected,
  }) : super(key: key);

  final double width;
  final bool selected;
  final PaketData paketData;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        width: getPropertionateScreenWidth(200),
        padding: EdgeInsets.symmetric(
            horizontal: getPropertionateScreenWidth(10),
            vertical: getPropertionateScreenWidth(5)),
        margin:
            EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(3)),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selected ? primaryColor : Colors.transparent,
            width: selected ? 3 : 0,
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              offset: Offset(2, 0),
              color: accentColor3.withOpacity(0.3),
            ),
          ],
        ),
        child: SizedBox(
          width: getPropertionateScreenWidth(width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                paketData.nama,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getPropertionateScreenWidth(18),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "${paketData.harga}",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: getPropertionateScreenWidth(14),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              ReadMoreText(
                paketData.keterangan,
                trimLines: 2,
                colorClickableText: primaryColor,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Lebih Banyak...',
                trimExpandedText: ' Sembunyikan...',
                style: TextStyle(fontSize: getPropertionateScreenWidth(12)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
