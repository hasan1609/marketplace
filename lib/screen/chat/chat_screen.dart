// import 'package:flutter/material.dart';
// import 'package:marketplace/component/bottom_nav.dart';
// import 'package:marketplace/enum.dart';
// import 'package:marketplace/screen/cart/cartscreen.dart';
// import 'package:marketplace/screen/chat/component/body.dart';
// import 'package:marketplace/screen/notifikasi/notifikasi.dart';
// import 'package:marketplace/screen/profil/component/icon_bar.dart';
// import 'package:marketplace/size_config.dart';

// class ChatScreen extends StatefulWidget {
//   static String routeName = "/chat";

//   @override
//   State<ChatScreen> createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     return Scaffold(
//       appBar: AppBar(
//           automaticallyImplyLeading: false,
//           title: Text(
//             "Pesan",
//             style: TextStyle(color: Colors.black),
//           ),
//           actions: [
//             // action button
//             Padding(
//               padding: EdgeInsets.only(top: getPropertionateScreenWidth(10)),
//               child: notifBarHome(
//                 svgSrc: "assets/icons/Cart Icon.svg",
//                 numOfItem: 3,
//                 press: () => Navigator.pushNamed(context, Cart.routeName),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(
//                   top: getPropertionateScreenWidth(10),
//                   right: getPropertionateScreenWidth(10)),
//               child: notifBarHome(
//                 svgSrc: "assets/icons/Bell.svg",
//                 numOfItem: 3,
//                 press: () => Navigator.pushNamed(context, Notifikasi.routeName),
//               ),
//             ),
//             // action button
//           ]),
//       body: Body(),
//       bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.chat),
//     );
//   }
// }
