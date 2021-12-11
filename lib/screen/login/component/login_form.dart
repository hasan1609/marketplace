import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/auth_sercives.dart';
import 'package:marketplace/component/default_button.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/screen/home/home.dart';
import 'package:marketplace/screen/lupa_password/forgot.dart';
import 'package:marketplace/size_config.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  bool viewPass = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getPropertionateScreenHeight(20)),
          buildPasswordFormField(),
          SizedBox(height: getPropertionateScreenHeight(20)),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                // onTap: () => Navigator.pushNamed(
                //     context, ForgotPasswordScreen.routeName),
                onTap: () {
                  Navigator.pushNamed(context, Forgot.routeName);
                },
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
            press: () async {
              try {
                UserCredential userCredential = await FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: email.text, password: password.text);

                Navigator.pushNamed(context, Home.routeName);
                print(userCredential.user!.uid.toString());
                AuthService().setsession(userCredential.user!.uid.toString());
              } on FirebaseAuthException catch (e) {
                if (e.code == 'user-not-found') {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Anda Tidak Memiliki Akun")));
                } else if (e.code == 'wrong-password') {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Password salah")));
                }
              }
              //Navigator.pushNamed(context, Home.routeName);
            },
          ),
        ],
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
      controller: password,
    );
  }

  TextFormField buildEmailFormField() {
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
        prefixIcon: Icon(Icons.email),
      ),
      controller: email,
    );
  }
}
