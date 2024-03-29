// import 'package:flutter/material.dart';
// import 'package:marketplace/constant.dart';
// import 'package:marketplace/model/Chat.dart';
// import 'package:marketplace/model/User.dart';
// import 'package:marketplace/screen/chatting/component/body.dart';
// import 'package:marketplace/size_config.dart';

// class ChattingScreen extends StatefulWidget {
//   final User user;
//   static String routeName = "/chatting";

//   ChattingScreen({required this.user});

//   @override
//   _ChattingScreenState createState() => _ChattingScreenState();
// }

// class _ChattingScreenState extends State<ChattingScreen> {
//   _chatBubble(Message message, bool isMe, bool isSameUser) {
//     if (isMe) {
//       return Column(
//         children: <Widget>[
//           Container(
//             alignment: Alignment.topRight,
//             child: Container(
//               constraints: BoxConstraints(
//                 maxWidth: MediaQuery.of(context).size.width * 0.80,
//               ),
//               padding: EdgeInsets.all(10),
//               margin: EdgeInsets.symmetric(vertical: 10),
//               decoration: BoxDecoration(
//                 color: Theme.of(context).primaryColor,
//                 borderRadius: BorderRadius.circular(15),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 2,
//                     blurRadius: 5,
//                   ),
//                 ],
//               ),
//               child: Text(
//                 message.text,
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//           !isSameUser
//               ? Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     Text(
//                       message.time,
//                       style: TextStyle(
//                         fontSize: 12,
//                         color: Colors.black45,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.5),
//                             spreadRadius: 2,
//                             blurRadius: 5,
//                           ),
//                         ],
//                       ),
//                       child: CircleAvatar(
//                         radius: 15,
//                         backgroundImage: AssetImage(message.sender.imageUrl),
//                       ),
//                     ),
//                   ],
//                 )
//               : Container(
//                   child: null,
//                 ),
//         ],
//       );
//     } else {
//       return Column(
//         children: <Widget>[
//           Container(
//             alignment: Alignment.topLeft,
//             child: Container(
//               constraints: BoxConstraints(
//                 maxWidth: MediaQuery.of(context).size.width * 0.80,
//               ),
//               padding: EdgeInsets.all(10),
//               margin: EdgeInsets.symmetric(vertical: 10),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(15),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 2,
//                     blurRadius: 5,
//                   ),
//                 ],
//               ),
//               child: Text(
//                 message.text,
//                 style: TextStyle(
//                   color: Colors.black54,
//                 ),
//               ),
//             ),
//           ),
//           !isSameUser
//               ? Row(
//                   children: <Widget>[
//                     Container(
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.5),
//                             spreadRadius: 2,
//                             blurRadius: 5,
//                           ),
//                         ],
//                       ),
//                       child: CircleAvatar(
//                         radius: 15,
//                         backgroundImage: AssetImage(message.sender.imageUrl),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       message.time,
//                       style: TextStyle(
//                         fontSize: 12,
//                         color: Colors.black45,
//                       ),
//                     ),
//                   ],
//                 )
//               : Container(
//                   child: null,
//                 ),
//         ],
//       );
//     }
//   }

//   _sendMessageArea() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 8),
//       height: 70,
//       color: Colors.white,
//       child: Row(
//         children: <Widget>[
//           IconButton(
//             icon: Icon(Icons.photo),
//             iconSize: 25,
//             color: Theme.of(context).primaryColor,
//             onPressed: () {},
//           ),
//           Expanded(
//             child: TextField(
//               decoration: InputDecoration.collapsed(
//                 hintText: 'Send a message..',
//               ),
//               textCapitalization: TextCapitalization.sentences,
//             ),
//           ),
//           IconButton(
//             icon: Icon(Icons.send),
//             iconSize: 25,
//             color: Theme.of(context).primaryColor,
//             onPressed: () {},
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final chatDetailArgumen arguments =
//         ModalRoute.of(context)!.settings.arguments as chatDetailArgumen;
//     int prevUserId;
//     return Scaffold(
//       backgroundColor: Color(0xFFF6F6F6),
//       appBar: AppBar(
//         brightness: Brightness.dark,
//         centerTitle: true,
//         title: RichText(
//           textAlign: TextAlign.center,
//           text: TextSpan(
//             children: [
//               TextSpan(
//                   text: widget.user.name,
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w400,
//                   )),
//               TextSpan(text: '\n'),
//               widget.user.isOnline
//                   ? TextSpan(
//                       text: 'Online',
//                       style: TextStyle(
//                         fontSize: 11,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     )
//                   : TextSpan(
//                       text: 'Offline',
//                       style: TextStyle(
//                         fontSize: 11,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     )
//             ],
//           ),
//         ),
//         leading: IconButton(
//             icon: Icon(Icons.arrow_back_ios),
//             color: Colors.white,
//             onPressed: () {
//               Navigator.pop(context);
//             }),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               reverse: true,
//               padding: EdgeInsets.all(20),
//               itemCount: messages.length,
//               itemBuilder: (BuildContext context, int index) {
//                 final Message message = messages[index];
//                 final bool isMe = message.sender.id == currentUser.id;
//                 final bool isSameUser = prevUserId == message.sender.id;
//                 prevUserId = message.sender.id;
//                 return _chatBubble(message, isMe, isSameUser);
//               },
//             ),
//           ),
//           _sendMessageArea(),
//         ],
//       ),
//     );
//   }
// }

// class chatDetailArgumen {
//   final User user;

//   chatDetailArgumen({required this.user});
// }
