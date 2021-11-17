import 'package:flutter/material.dart';
import 'package:marketplace/screen/detail/detail.dart';
import 'package:marketplace/screen/home/home.dart';
import 'package:marketplace/screen/introduction/intro.dart';
import 'package:marketplace/screen/login/login.dart';
import 'package:marketplace/screen/register/register.dart';

final Map<String, WidgetBuilder> routes = {
  Introduction.routeName: (context) => Introduction(),
  Login.routeName: (context) => Login(),
  Register.routeName: (context) => Register(),
  Home.routeName: (context) => Home(),
  Detail.routeName: (context) => Detail(),
};
