import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/size_config.dart';

class BubbleChat extends StatelessWidget {
  final bool isUser;
  final bool hasProduct;
  final String text;

  const BubbleChat(
      {Key? key,
      required this.text,
      required this.isUser,
      required this.hasProduct})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget productPreview() {
      return Row(
        mainAxisAlignment:
            isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(getPropertionateScreenWidth(12)),
            margin: EdgeInsets.only(bottom: getPropertionateScreenWidth(12)),
            width: getPropertionateScreenWidth(225),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(isUser ? 0 : 12),
                topLeft: Radius.circular(isUser ? 12 : 0),
                bottomLeft: const Radius.circular(12),
                bottomRight: const Radius.circular(12),
              ),
              color: isUser ? primaryColor : secondaryColor,
            ),
          ),
        ],
      );
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: getPropertionateScreenWidth(12)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment:
                isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.8,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: getPropertionateScreenWidth(15),
                    vertical: getPropertionateScreenWidth(12),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(isUser ? 0 : 12),
                      topLeft: Radius.circular(isUser ? 12 : 0),
                      bottomLeft: const Radius.circular(12),
                      bottomRight: const Radius.circular(12),
                    ),
                    color: isUser ? primaryColor : secondaryColor,
                  ),
                  child: Text(
                    text,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: getPropertionateScreenWidth(12)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
