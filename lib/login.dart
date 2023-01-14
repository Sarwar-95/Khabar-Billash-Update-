import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:khabarbillash1/FirstPage.dart';
import 'package:khabarbillash1/signup.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(children: [
          Column(
            children: [
              //--------------------Container(1)
              Container(
                height: MediaQuery.of(context).size.height * .3,
                width: double.infinity,
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
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 400),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        'Welcome Back',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),

              //--------------------Container(2)
              Container(
                //height: 442,
                height: MediaQuery.of(context).size.height * .7,
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
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
                  child: ListView(
                    children: [
                      //--------------------TextField(1)
                      TextField(
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
                      SizedBox(
                        height: 25,
                      ),
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
                        height: 25,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              primary: Colors.pink,
                              elevation: 25,
                              shadowColor: Color.fromARGB(255, 77, 13, 225)),
                          child: Text(
                            'Log In',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          )),

                      //-----------------------------------------------------------------------
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        //--------------------Row
                        child: Row(
                          children: [
                            Text(
                              "Don't have acoount?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),

                            //--------------------Text Button
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return signup();
                                  }));
                                },
                                child: Text(
                                  'Sign up',
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
