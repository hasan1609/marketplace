import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/size_config.dart';

class logOut extends StatelessWidget {
  const logOut({Key? key, required this.press}) : super(key: key);

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: getPropertionateScreenWidth(40),
        width: double.infinity,
        padding: EdgeInsets.all(getPropertionateScreenWidth(8)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              offset: Offset(2, 0),
              color: accentColor3.withOpacity(0.3),
            ),
          ],
          border: Border.all(
            width: getPropertionateScreenWidth(2),
            color: Colors.white,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                child: SvgPicture.asset("assets/icons/logout.svg"),
              ),
            ),
            SizedBox(
              width: getPropertionateScreenWidth(5),
            ),
            Text(
              "Keluar",
              style: TextStyle(
                fontSize: getPropertionateScreenWidth(14),
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
