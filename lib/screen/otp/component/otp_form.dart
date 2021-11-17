import 'package:flutter/material.dart';
import 'package:marketplace/component/default_button.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/screen/home/home.dart';
import 'package:marketplace/size_config.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({
    Key? key,
  }) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getPropertionateScreenWidth(60),
                child: TextFormField(
                  autofocus: true,
                  style: TextStyle(fontSize: 20),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (value) => nextField(
                    value,
                    pin2FocusNode,
                  ),
                ),
              ),
              SizedBox(
                width: getPropertionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  style: TextStyle(fontSize: 20),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (value) => nextField(
                    value,
                    pin3FocusNode,
                  ),
                ),
              ),
              SizedBox(
                width: getPropertionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  style: TextStyle(fontSize: 20),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (value) => nextField(
                    value,
                    pin4FocusNode,
                  ),
                ),
              ),
              SizedBox(
                width: getPropertionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  style: TextStyle(fontSize: 20),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    if (value.length == 1) {
                      pin4FocusNode!.unfocus();
                      // Then you need to check is the code is correct or not
                    }
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          DefaultButton(
            text: "Lanjut",
            press: () => Navigator.pushNamed(context, Home.routeName),
          )
        ],
      ),
    );
  }
}
