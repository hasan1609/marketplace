import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/screen/chatting/component/body.dart';
import 'package:marketplace/size_config.dart';

class ChattingScreen extends StatelessWidget {
  static String routeName = "/chatting";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        // automaticallyImplyLeading: false,
        // centerTitle: false,
        title: Row(children: [
          Container(
            height: getPropertionateScreenWidth(50),
            width: getPropertionateScreenWidth(50),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/apple-pay.png'),
              ),
            ),
          ),
          SizedBox(
            width: getPropertionateScreenWidth(15),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chat Seller",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getPropertionateScreenWidth(16),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
      // body: Body(),
      bottomNavigationBar: chatInput(),
    );
  }

  Widget previewProduct() {
    return Container(
      padding: EdgeInsets.all(getPropertionateScreenWidth(5)),
      margin: EdgeInsets.only(bottom: getPropertionateScreenWidth(20)),
      height: getPropertionateScreenWidth(75),
      width: getPropertionateScreenWidth(220),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          border: Border.all(color: Colors.black)),
      child: Row(
        children: [
          Container(
            width: getPropertionateScreenWidth(60),
            height: getPropertionateScreenWidth(60),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage('assets/images/apple-pay.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: getPropertionateScreenWidth(5),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ultraboost 2.0 zzzzzzzzzzzzzzzzzzzzzzzzz',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getPropertionateScreenWidth(14)),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "100.000",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getPropertionateScreenWidth(14)),
                  overflow: TextOverflow.clip,
                ),
              ],
            ),
          ),
          IconButton(
            iconSize: getPropertionateScreenWidth(22),
            onPressed: () {},
            icon: Icon(Icons.cancel),
          ),
        ],
      ),
    );
  }

  Widget chatInput() {
    return Container(
      margin: EdgeInsets.all(getPropertionateScreenWidth(18)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          previewProduct(),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: getPropertionateScreenWidth(17)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: secondaryColor),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    cursorColor: Color(0xFF2C96F1),
                    decoration: InputDecoration(
                      hintText: 'Your Message',
                      hintStyle: TextStyle(color: Color(0xFF999999)),
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: getPropertionateScreenWidth(18),
              ),
              Container(
                width: getPropertionateScreenWidth(42),
                height: getPropertionateScreenWidth(42),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: primaryColor),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send_sharp),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
