import 'package:flutter/material.dart';
import 'package:marketplace/component/default_button.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/screen/datadiri/datadiri.dart';
import 'package:marketplace/size_config.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool viewPass = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getPropertionateScreenHeight(30)),
          buildPasswordFormField(),
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
              Navigator.pushNamed(context, DataDiriRegister.routeName);
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Masukkan Email",
        labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: getPropertionateScreenWidth(18)),
        hintText: "Ex: example@gmail.com",
        hintStyle: TextStyle(
            fontSize: getPropertionateScreenWidth(12), color: secondaryColor),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Icon(Icons.mail),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      //     obscureText: true,
      //     onSaved: (newValue) => password = newValue,
      //     onChanged: (value) {
      //       if (value.isNotEmpty) {
      //         removeError(error: kPassNullError);
      //       } else if (value.length >= 8) {
      //         removeError(error: kShortPassError);
      //       }
      //       return null;
      //     },
      //     validator: (value) {
      //       if (value!.isEmpty) {
      //         addError(error: kPassNullError);
      //         return "";
      //       } else if (value.length < 8) {
      //         addError(error: kShortPassError);
      //         return "";
      //       }
      //       return null;
      //     },
      obscureText: viewPass,
      decoration: InputDecoration(
        labelText: "Masukkan Password",
        hintText: "******",
        labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: getPropertionateScreenWidth(18)),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(
              viewPass ? Icons.remove_red_eye : Icons.remove_red_eye_outlined),
          onPressed: () {
            setState(() {
              viewPass = !viewPass;
            });
          },
        ),
      ),
    );
  }
}
