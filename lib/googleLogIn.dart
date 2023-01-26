import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

class googleLogIn extends StatefulWidget {
  const googleLogIn({Key? key}) : super(key: key);

  @override
  State<googleLogIn> createState() => _googleLogInState();
}

class _googleLogInState extends State<googleLogIn> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110),
            child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.google,
                      color: Color.fromARGB(255, 213, 78, 68),
                    ),
                    Text("  Sign Up with Google")
                  ],
                )),
          ),
        ));
  }
}
