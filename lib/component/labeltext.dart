import 'package:flutter/material.dart';
import 'package:marketplace/size_config.dart';

class labelInputText extends StatelessWidget {
  const labelInputText({
    Key? key,
    required this.text1,
  }) : super(key: key);

  final String text1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text1,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: getPropertionateScreenWidth(5),
        ),
        Text(
          "*",
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
