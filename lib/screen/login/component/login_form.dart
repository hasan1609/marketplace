import 'package:flutter/material.dart';
import 'package:marketplace/component/custom_surfic.dart';
import 'package:marketplace/component/default_button.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/helper/keyboard.dart';
import 'package:marketplace/screen/home/home.dart';
import 'package:marketplace/screen/otp/otp.dart';
import 'package:marketplace/size_config.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // final _formKey = GlobalKey<FormState>();
  // String? email;
  // String? password;
  // final List<String?> errors = [];

  // void addError({String? error}) {
  //   if (!errors.contains(error))
  //     setState(() {
  //       errors.add(error);
  //     });
  // }

  // void removeError({String? error}) {
  //   if (errors.contains(error))
  //     setState(() {
  //       errors.remove(error);
  //     });
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formKey,
      child: Column(
        children: [
          buildPhoneFormField(),
          // SizedBox(height: getPropertionateScreenHeight(30)),
          // buildPasswordFormField(),
          SizedBox(height: getPropertionateScreenHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                // onTap: () => Navigator.pushNamed(
                //     context, ForgotPasswordScreen.routeName),
                onTap: () {},
                child: Text(
                  "Lupa Password?",
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          // FormError(errors: errors),
          SizedBox(height: getPropertionateScreenHeight(10)),
          DefaultButton(
            text: "Masuk",
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

  // TextFormField buildPasswordFormField() {
  //   return TextFormField(
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
  //     decoration: InputDecoration(
  //       labelText: "Password",
  //       hintText: "Enter your password",
  //       // If  you are using latest version of flutter then lable text and hint text shown like this
  //       // if you r using flutter less then 1.20.* then maybe this is not working properly
  //       floatingLabelBehavior: FloatingLabelBehavior.always,
  //       suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
  //     ),
  //   );
  // }

  TextFormField buildPhoneFormField() {
    return TextFormField(
      // keyboardType: TextInputType.emailAddress,
      // onSaved: (newValue) => email = newValue,
      // onChanged: (value) {
      //   if (value.isNotEmpty) {
      //     removeError(error: kEmailNullError);
      //   } else if (emailValidatorRegExp.hasMatch(value)) {
      //     removeError(error: kInvalidEmailError);
      //   }
      //   return null;
      // },
      // validator: (value) {
      //   if (value!.isEmpty) {
      //     addError(error: kEmailNullError);
      //     return "";
      //   } else if (!emailValidatorRegExp.hasMatch(value)) {
      //     addError(error: kInvalidEmailError);
      //     return "";
      //   }
      //   return null;
      // },
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
}
