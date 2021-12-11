import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:marketplace/component/default_button.dart';
import 'package:marketplace/component/labeltext.dart';
import 'package:marketplace/screen/home/home.dart';
import 'package:marketplace/screen/login/login.dart';
import 'package:marketplace/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  User? user = FirebaseAuth.instance.currentUser;

  final TextEditingController name = TextEditingController();
  final TextEditingController numberPhone = TextEditingController();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  CollectionReference users = FirebaseFirestore.instance.collection('Users');

  File? image;

  Future getImage(ImageSource source) async {
    try {
      final ImagePicker _picker = ImagePicker();
      final imagePicked = await _picker.pickImage(source: source);
      if (imagePicked == null) return;
      final imgTmp = File(imagePicked.path);
      this.image = imgTmp;
      Navigator.pop(context);
      setState(() => this.image = imgTmp);
    } catch (e) {
      print('Eror');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: getPropertionateScreenHeight(5),
          horizontal: getPropertionateScreenWidth(20),
        ),
        padding: EdgeInsets.only(top: getPropertionateScreenWidth(10)),
        child: Form(
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    labelInputText(text1: "Pilih foto profil"),
                    SizedBox(
                      height: getPropertionateScreenWidth(10),
                    ),
                    image != null
                        ? Container(
                            height: getPropertionateScreenWidth(100),
                            width: getPropertionateScreenWidth(100),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            margin: EdgeInsets.only(
                                bottom: getPropertionateScreenWidth(10)),
                            child: Image.file(
                              image!,
                              fit: BoxFit.cover,
                            ),
                          )
                        : Container(
                            height: getPropertionateScreenWidth(80),
                            width: getPropertionateScreenWidth(80),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            margin: EdgeInsets.only(
                                bottom: getPropertionateScreenWidth(10)),
                            child: Image.asset(
                              "assets/images/default.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                    RaisedButton(
                      child: Text("pilih"),
                      onPressed: () => _pilihFoto(),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: getPropertionateScreenWidth(10),
              ),
              labelInputText(text1: "Masukkan nama anda"),
              SizedBox(
                height: getPropertionateScreenWidth(10),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Nama Lengkap",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintStyle:
                      TextStyle(fontSize: getPropertionateScreenWidth(12)),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: getPropertionateScreenWidth(20),
                    vertical: getPropertionateScreenWidth(9),
                  ),
                ),
                controller: name,
              ),
              SizedBox(
                height: getPropertionateScreenWidth(15),
              ),
              labelInputText(text1: "Masukkan No.hp"),
              SizedBox(
                height: getPropertionateScreenWidth(10),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "No.Hp",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintStyle:
                      TextStyle(fontSize: getPropertionateScreenWidth(12)),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: getPropertionateScreenWidth(20),
                    vertical: getPropertionateScreenWidth(9),
                  ),
                ),
                controller: numberPhone,
              ),
              SizedBox(
                height: getPropertionateScreenWidth(15),
              ),
              // labelInputText(text1: "Email anda"),
              // SizedBox(
              //   height: getPropertionateScreenWidth(10),
              // ),
              // TextFormField(
              //   keyboardType: TextInputType.text,
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     hintStyle:
              //         TextStyle(fontSize: getPropertionateScreenWidth(12)),
              //     contentPadding: EdgeInsets.symmetric(
              //       horizontal: getPropertionateScreenWidth(20),
              //       vertical: getPropertionateScreenWidth(9),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: getPropertionateScreenWidth(20),
              ),
              DefaultButton(
                text: "Daftar",
                press: () async {
                  print(user!.uid);
                  users.doc(user!.uid).set({
                    'name': name.text,
                    'numberPhone': numberPhone.text,
                    'uid': user!.uid,
                    'email': user!.email,
                    'coin': '0',
                    'balance': '0',
                  });

                  Navigator.pushNamed(context, Login.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _pilihFoto() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: Color(0xff737373),
          height: getPropertionateScreenWidth(120),
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: getPropertionateScreenWidth(5),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.camera),
                  title: Text("Kamera"),
                  onTap: () => getImage(ImageSource.camera),
                ),
                ListTile(
                    leading: Icon(Icons.image),
                    title: Text("Galeri"),
                    onTap: () => getImage(ImageSource.gallery)),
              ],
            ),
          ),
        );
      },
    );
  }
}
