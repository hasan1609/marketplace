import 'package:flutter/material.dart';
import 'package:marketplace/component/default_button.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/screen/otp/otp.dart';
import 'package:marketplace/size_config.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formKey,
      child: Column(
        children: [
          buildNameFormField(),
          SizedBox(height: getPropertionateScreenHeight(30)),
          buildPhoneFormField(),
          SizedBox(height: getPropertionateScreenHeight(40)),
          DefaultButton(
            text: "Daftar",
            press: () {
              // if (_formKey.currentState!.validate()) {
              //   _formKey.currentState!.save();
              //   // if all are valid then go to success screen
              //   KeyboardUtil.hideKeyboard(context);
              //   Navigator.pushNamed(context, Home.routeName);
              // }
              Navigator.pushNamed(context, OtpScreen.routeName);
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPhoneFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Masukkan No.Hp",
        labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: getPropertionateScreenWidth(18)),
        hintText: "Ex: 081xxxxx",
        hintStyle: TextStyle(
            fontSize: getPropertionateScreenWidth(12), color: secondaryColor),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Icon(Icons.phone),
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Masukkan Nama Lengkap",
        labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: getPropertionateScreenWidth(18)),
        hintText: "Nama alengkap anda",
        hintStyle: TextStyle(
            fontSize: getPropertionateScreenWidth(12), color: secondaryColor),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Icon(Icons.people_alt),
      ),
    );
  }
}
