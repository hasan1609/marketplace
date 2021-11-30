import 'package:flutter/material.dart';
import 'package:marketplace/screen/addproduk/addproduk.dart';
import 'package:marketplace/screen/cart/cartscreen.dart';
import 'package:marketplace/screen/datadiri/datadiri.dart';
import 'package:marketplace/screen/detail/detail.dart';
import 'package:marketplace/screen/home/home.dart';
import 'package:marketplace/screen/introduction/intro.dart';
import 'package:marketplace/screen/login/login.dart';
import 'package:marketplace/screen/lupa_password/forgot.dart';
import 'package:marketplace/screen/notifikasi/notifikasi.dart';
import 'package:marketplace/screen/otp/otp.dart';
import 'package:marketplace/screen/populerproduk/populerproduk.dart';
import 'package:marketplace/screen/profil/profil.dart';
import 'package:marketplace/screen/register/register.dart';
import 'package:marketplace/screen/selengkapnya/selengkapnya.dart';
import 'package:marketplace/screen/splash/splashscreen.dart';
import 'package:marketplace/screen/subkategori/subkategori_screen.dart';
import 'package:marketplace/screen/tokoproduk/tokoproduk.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  Introduction.routeName: (context) => Introduction(),
  Login.routeName: (context) => Login(),
  Forgot.routeName: (context) => Forgot(),
  Register.routeName: (context) => Register(),
  OtpScreen.routeName: (context) => OtpScreen(),
  Home.routeName: (context) => Home(),
  Notifikasi.routeName: (context) => Notifikasi(),
  Detail.routeName: (context) => Detail(),
  selengkapnya.routeName: (context) => selengkapnya(),
  Cart.routeName: (context) => Cart(),
  Profile.routeName: (context) => Profile(),
  tokoProduk.routeName: (context) => tokoProduk(),
  addProduk.routeName: (context) => addProduk(),
  PopulerProduk.routeName: (context) => PopulerProduk(),
  SubKategoriMenu.routeName: (context) => SubKategoriMenu(),
  DataDiriRegister.routeName: (context) => DataDiriRegister(),
};
