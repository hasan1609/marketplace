import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/size_config.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6, //60% dari width
      // height: 50,
      decoration: BoxDecoration(
        color: secondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) {
          // searcvalue
        },
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: "Apa yang anda cari?",
          hintStyle: TextStyle(fontSize: getPropertionateScreenWidth(12)),
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: getPropertionateScreenWidth(20),
            vertical: getPropertionateScreenWidth(9),
          ),
        ),
      ),
    );
  }
}
