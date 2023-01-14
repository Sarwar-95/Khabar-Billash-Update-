import 'package:flutter/material.dart';
import 'package:khabarbillash1/login.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //--------------------------------2
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/starting.jpg'),
              fit: BoxFit.cover,
              opacity: 0.1),
        ),

        //--------------------------------3
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 210),
              child: Icon(
                Icons.delivery_dining,
                size: 100,
                color: Color.fromARGB(255, 246, 7, 126),
              ),
            ),
            Text(
              'Welcome to Khabar-Billash',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 246, 7, 126)),
            ),
            Text(
              'Log in and order delicious food from restaurants around you',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: FloatingActionButton(
                  onPressed: () {
                    //-----------------Navigate to login page
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return login();
                    }));
                  },
                  child: Icon(
                    Icons.expand_more_outlined,
                    size: 45,
                  ),
                  backgroundColor: Color.fromARGB(255, 246, 7, 126)),
            ),
          ],
        ),
      ),
    );
  }
}
