import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class phone extends StatelessWidget {
   phone({Key? key}) : super(key: key);
  
  TextEditingController phoneController =TextEditingController();
  Firebase _auth =FirebaseAuth.instance as Firebase;
  phoneAuth()async
  {
      
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Hello world')
    );
  }
}
