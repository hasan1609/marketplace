import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<User?> register(String email, String password) async {
    CollectionReference users = firestore.collection('Users');
    try {
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      print(userCredential.user!.emailVerified);
      print(userCredential.user!.uid.toString());

      // Call the user's CollectionReference to add a new user
      users
          .doc(userCredential.user!.uid)
          .set({'email': email, 'uid': userCredential.user!.uid});
      return userCredential.user;
    } catch (e) {
      print(e);
    }
  }

  Future<void> setProfile(String name, String numberPhone, String uid) async {
    CollectionReference users = firestore.collection('Users');
    users.doc(uid).set({'name': name, 'numberPhone': numberPhone, 'uid': uid});
  }

  Future<User?> balancse(String uid) async {
    await FirebaseFirestore.instance
        .collection('Users')
        .doc(uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        // ignore: avoid_print
        return documentSnapshot.get('balance');
      }
    });

    // String ss = 'koplak';
    //print(ss);
  }

  Future<void> setsession(String dg) async {
    String counter = dg;
    final jembatan = await SharedPreferences
        .getInstance(); // untuk mengambil data dan memaasukkan data kedalam storage

    if (jembatan.containsKey('myData')) {
      jembatan.clear(); // setiap menjalankan function di clear dulu datanya
    }

    final myData = json.encode({
      'counter': counter.toString(),
    });

    jembatan.setString('myData', myData);
    print('add session');
  }

  Future<void> getsession() async {
    final jembatan = await SharedPreferences.getInstance();

    if (jembatan.containsKey('myData')) {
      final myData =
          json.decode(jembatan.getString('myData')!) as Map<String, dynamic>;

      String counter = myData["counter"];

      print(counter);
      print('jika ada user langsung direct home');
    } else {
      print('jika ada user langsung direct intro');
    }
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
    final jembatan = await SharedPreferences.getInstance();
    jembatan.clear();
    print('Logout');
  }
}
