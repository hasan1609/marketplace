// import 'package:flutter/material.dart';
// import 'package:marketplace/screen/chatting/chatting_screen.dart';
// import 'package:marketplace/size_config.dart';

// class tes extends StatelessWidget {
//   const tes({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => Navigator.pushNamed(context, ChattingScreen.routeName),
//       child: Container(
//         padding: EdgeInsets.all(
//           getPropertionateScreenWidth(15),
//         ),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Container(
//                   height: getPropertionateScreenWidth(50),
//                   width: getPropertionateScreenWidth(50),
//                   decoration: const BoxDecoration(
//                     shape: BoxShape.circle,
//                     image: DecorationImage(
//                       image: AssetImage('assets/images/apple-pay.png'),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: getPropertionateScreenWidth(15),
//                 ),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Chat Seller",
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: getPropertionateScreenWidth(16),
//                         ),
//                       ),
//                       Text(
//                         "Your item is ready, Your item jgnvjf frjdfnj rjgfn rfgj is ready",
//                         overflow: TextOverflow.ellipsis,
//                         style: TextStyle(
//                           color: Color(0xFF999999),
//                           fontSize: getPropertionateScreenWidth(12),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   width: getPropertionateScreenWidth(15),
//                 ),
//                 Text(
//                   'Now',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: getPropertionateScreenWidth(10),
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               width: double.infinity,
//               height: 0.4,
//               margin: EdgeInsets.symmetric(
//                   vertical: getPropertionateScreenWidth(10)),
//               color: Color(0xFF504F5E),
//             ),
//             Row(
//               children: [
//                 Container(
//                   height: getPropertionateScreenWidth(50),
//                   width: getPropertionateScreenWidth(50),
//                   decoration: const BoxDecoration(
//                     shape: BoxShape.circle,
//                     image: DecorationImage(
//                       image: AssetImage('assets/images/apple-pay.png'),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: getPropertionateScreenWidth(15),
//                 ),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Chat Seller",
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: getPropertionateScreenWidth(16),
//                         ),
//                       ),
//                       Text(
//                         "Your item is ready, Your item jgnvjf frjdfnj rjgfn rfgj is ready",
//                         overflow: TextOverflow.ellipsis,
//                         style: TextStyle(
//                           color: Color(0xFF999999),
//                           fontSize: getPropertionateScreenWidth(12),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   width: getPropertionateScreenWidth(15),
//                 ),
//                 Text(
//                   'Now',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: getPropertionateScreenWidth(10),
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               width: double.infinity,
//               height: 0.4,
//               margin: EdgeInsets.symmetric(
//                   vertical: getPropertionateScreenWidth(10)),
//               color: Color(0xFF504F5E),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
