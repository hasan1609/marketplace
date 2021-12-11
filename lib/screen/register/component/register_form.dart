import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/auth_sercives.dart';
import 'package:marketplace/component/default_button.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/screen/datadiri/datadiri.dart';
import 'package:marketplace/size_config.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  CollectionReference users = FirebaseFirestore.instance.collection('Users');

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
            press: () async {
              try {
                UserCredential userCredential =
                    await firebaseAuth.createUserWithEmailAndPassword(
                        email: email.text, password: password.text);
                users.doc(userCredential.user!.uid).set(
                    {'email': email.text, 'uid': userCredential.user!.uid});
                Navigator.pushNamed(context, DataDiriRegister.routeName);
              } on FirebaseAuthException catch (e) {
                if (e.code == 'user-not-found') {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Anda Tidak Memiliki Akun")));
                } else if (e.code == 'weak-password') {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Password Min 6 Karakter")));
                }
              }

              // Navigator.pushNamed(context, DataDiriRegister.routeName);
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
      controller: email,
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
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
}
