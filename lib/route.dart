import 'package:flutter/material.dart';
import 'package:marketplace/screen/detail/detail.dart';
import 'package:marketplace/screen/home/home.dart';
import 'package:marketplace/screen/introduction/intro.dart';
import 'package:marketplace/screen/login/login.dart';
import 'package:marketplace/screen/lupa_password/forgot.dart';
import 'package:marketplace/screen/otp/otp.dart';
import 'package:marketplace/screen/register/register.dart';

final Map<String, WidgetBuilder> routes = {
  Introduction.routeName: (context) => Introduction(),
  Login.routeName: (context) => Login(),
  Forgot.routeName: (context) => Forgot(),
  Register.routeName: (context) => Register(),
  OtpScreen.routeName: (context) => OtpScreen(),
  Home.routeName: (context) => Home(),
  Detail.routeName: (context) => Detail(),
};
