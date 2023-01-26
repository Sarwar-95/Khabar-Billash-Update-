import 'dart:developer';
import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class signup extends StatelessWidget {
   signup({Key? key}) : super(key: key);
  
   TextEditingController userNameController = TextEditingController();
   TextEditingController userEmailController = TextEditingController();
   TextEditingController userPhoneController = TextEditingController();
   TextEditingController userPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Column(
            children: [
              //--------------------Container(1)
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .2,
                //height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.center,
                      colors: [
                        Color.fromARGB(255, 222, 5, 150),
                        Color.fromARGB(255, 232, 38, 103),
                        Color.fromARGB(235, 246, 4, 105)
                      ]),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      'Signup',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),

              //--------------------Container(2)
              Container(
                //height: 472,
                width: double.infinity,
                // height: double.infinity,
                height: MediaQuery.of(context).size.height * .8,
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomLeft, colors: [
                      Color.fromARGB(255, 253, 246, 251),
                      Color.fromARGB(255, 243, 227, 232),
                      Color.fromARGB(235, 245, 202, 220)
                    ]),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 25,
                  ),
                  child: ListView(
                    children: [
                      //--------------------TextField(1)
                      TextField(
                        controller: userNameController,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 246, 7, 126)),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 246, 7, 126)),
                              borderRadius: BorderRadius.circular(30)),

                          //--------------------Email Icon
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.person,
                              color: Color.fromARGB(255, 246, 7, 126),
                            ),
                          ),
                          hintText: 'User Name',
                        ),
                      ),

                      SizedBox(
                        height: 25,
                      ),
                      //--------------------TextField(2)
                      TextField(
                        controller: userEmailController,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 246, 7, 126)),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 246, 7, 126)),
                              borderRadius: BorderRadius.circular(30)),

                          //--------------------Email Icon
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.email,
                              color: Color.fromARGB(255, 246, 7, 126),
                            ),
                          ),
                          hintText: 'Email',
                        ),
                      ),

                      SizedBox(
                        height: 25,
                      ),
                      //--------------------TextField(2)
                      TextField(
                        controller: userPhoneController,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 246, 7, 126)),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 246, 7, 126)),
                              borderRadius: BorderRadius.circular(30)),

                          //--------------------Email Icon
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.phone,
                              color: Color.fromARGB(255, 246, 7, 126),
                            ),
                          ),
                          hintText: 'Phone',
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      //--------------------TextField(2)
                      TextField(
                        controller: userPasswordController,
                        obscureText: true, // for password
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w800),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 246, 7, 126)),
                          ),

                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 246, 7, 126)),
                              borderRadius: BorderRadius.circular(30)),

                          //--------------------Lock Icon
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.lock,
                              color: Color.fromARGB(255, 246, 7, 126),
                            ),
                          ),
                          hintText: 'Password',
                        ),
                      ),
                      //-----------------------------------------------------------
                      // SizedBox(
                      //   height: 20,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Remind me next time',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Switch(
                              activeColor: Colors.white,
                              activeTrackColor:
                                  Color.fromARGB(255, 248, 85, 140),
                              value: true,
                              onChanged: (value) {})
                        ],
                      ),
                      //-----------------------------(Log In Button)--------------------------

                      SizedBox(
                        height: 10,
                      ),

                      ElevatedButton(
                          onPressed: () {
                            
                            var userName =userNameController.text.trim();
                            var userEmail =userEmailController.text.trim();
                            var userPhone =userPhoneController.text.trim();
                            var userPassword =userPasswordController.text.trim();

                            FirebaseAuth.instance.createUserWithEmailAndPassword(email: 
                              userEmail, password: userPassword).then((value) => 
                              print('User Created')
                              );
                          },
                          style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              primary: Colors.pink,
                              elevation: 25,
                              shadowColor: Color.fromARGB(255, 77, 13, 225)),
                          child: Text(
                            'Create New Account',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          )),

                      //-----------------------------------------------------------------------
                      Padding(
                        padding: const EdgeInsets.only(left: 83),
                        //--------------------Row
                        child: Row(
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),

                            //--------------------Text Button
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.pink,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
