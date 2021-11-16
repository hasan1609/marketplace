import 'package:flutter/material.dart';
import 'package:marketplace/route.dart';
import 'package:marketplace/screen/introduction/intro.dart';
import 'package:marketplace/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: Introduction.routeName,
      routes: routes,
    );
  }
}
