import 'package:flutter/material.dart';
import 'package:marketplace/screen/addproduk/addproduk.dart';
import 'package:marketplace/screen/cart/cartscreen.dart';
// import 'package:marketplace/screen/chat/chat_screen.dart';
// import 'package:marketplace/screen/chatting/chatting_screen.dart';
import 'package:marketplace/screen/checkouttopup/checkouttopup.dart';
import 'package:marketplace/screen/datadiri/datadiri.dart';
import 'package:marketplace/screen/detail/detail.dart';
import 'package:marketplace/screen/detailsubkategori/detailsubkat_screen.dart';
import 'package:marketplace/screen/home/home.dart';
import 'package:marketplace/screen/introduction/intro.dart';
import 'package:marketplace/screen/login/login.dart';
import 'package:marketplace/screen/lupa_password/forgot.dart';
import 'package:marketplace/screen/notifikasi/notifikasi.dart';
import 'package:marketplace/screen/otp/otp.dart';
import 'package:marketplace/screen/populerproduk/populerproduk.dart';
import 'package:marketplace/screen/produk/produk_screen.dart';
import 'package:marketplace/screen/profil/profil.dart';
import 'package:marketplace/screen/register/register.dart';
import 'package:marketplace/screen/selengkapnya/selengkapnya.dart';
import 'package:marketplace/screen/splash/splashscreen.dart';
import 'package:marketplace/screen/subkategori/subkategori_screen.dart';
import 'package:marketplace/screen/tokoproduk/tokoproduk.dart';
import 'package:marketplace/screen/topup/topup.dart';

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
  Topup.routeName: (context) => Topup(),
  DetailSubkategoriScreen.routeName: (context) => DetailSubkategoriScreen(),
  DataDiriRegister.routeName: (context) => DataDiriRegister(),
  ProdukScreen.routeName: (context) => ProdukScreen(),
  CheckoutTopup.routeName: (context) => CheckoutTopup(),
  subKategoriScreen.routeName: (context) => subKategoriScreen(),
  // ChatScreen.routeName: (context) => ChatScreen(),
  // ChattingScreen.routeName: (context) => ChattingScreen()
};
