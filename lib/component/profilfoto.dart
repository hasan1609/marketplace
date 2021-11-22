import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/size_config.dart';

class profilFoto extends StatelessWidget {
  const profilFoto({
    Key? key,
    required this.nama,
    required this.text,
    required this.foto,
  }) : super(key: key);
  final String nama, text;
  final ImageProvider foto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: getPropertionateScreenWidth(50),
                width: getPropertionateScreenWidth(50),
                decoration: BoxDecoration(
                  color: accentColor3,
                  shape: BoxShape.circle,
                  image: DecorationImage(image: foto, fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: getPropertionateScreenWidth(10),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: getPropertionateScreenWidth(100),
                    child: Text(
                      nama,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: getPropertionateScreenWidth(16),
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  SizedBox(
                    height: getPropertionateScreenWidth(5),
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: getPropertionateScreenWidth(14),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(Icons.settings),
        ],
      ),
    );
  }
}
