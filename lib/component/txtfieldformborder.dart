import 'package:flutter/material.dart';
import 'package:marketplace/size_config.dart';

class txtFormFieldborder extends StatelessWidget {
  const txtFormFieldborder({
    Key? key,
    required this.txt,
  }) : super(key: key);

  final String txt;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: txt,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        hintStyle: TextStyle(fontSize: getPropertionateScreenWidth(12)),
        contentPadding: EdgeInsets.symmetric(
          horizontal: getPropertionateScreenWidth(20),
          vertical: getPropertionateScreenWidth(9),
        ),
      ),
    );
  }
}
