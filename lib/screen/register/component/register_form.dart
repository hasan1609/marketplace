import 'package:flutter/material.dart';
import 'package:marketplace/component/default_button.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/screen/home/home.dart';
import 'package:marketplace/size_config.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
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
          // FormError(errors: errors),
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
              Navigator.pushNamed(context, Home.routeName);
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
