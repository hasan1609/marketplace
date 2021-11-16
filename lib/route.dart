import 'package:flutter/material.dart';
import 'package:marketplace/screen/detail/detail.dart';
import 'package:marketplace/screen/home/home.dart';
import 'package:marketplace/screen/introduction/intro.dart';

final Map<String, WidgetBuilder> routes = {
  Introduction.routeName: (context) => Introduction(),
  Home.routeName: (context) => Home(),
  Detail.routeName: (context) => Detail(),
};
