import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:khabarbillash1/FirstPage.dart';
import 'package:khabarbillash1/googleLogIn.dart';
import 'package:khabarbillash1/login.dart';
import 'package:khabarbillash1/phone.dart';
import 'package:khabarbillash1/signup.dart';



Future<void> main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 
      //signup()
      //login(),
     //FirstPage(),
     phone()
     //googleLogIn()
    ),
  );
}

