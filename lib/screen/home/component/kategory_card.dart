import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketplace/size_config.dart';

class categoryMenu extends StatelessWidget {
  const categoryMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> kategory = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Sale"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Tagihan"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Hadiah"},
      {"icon": "assets/icons/Discover.svg", "text": "More"},
    ];
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            kategory.length,
            (index) => kategoriCard(
              icon: kategory[index]["icon"],
              text: kategory[index]["text"],
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class kategoriCard extends StatelessWidget {
  const kategoriCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getPropertionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getPropertionateScreenWidth(10)),
                decoration: BoxDecoration(
                  color: Color(0xFFDFF5FF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
