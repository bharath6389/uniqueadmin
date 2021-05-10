import 'dart:async';
import 'package:flutter/material.dart';
import 'package:unique/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[50],
        body: Column(
          children: [
            Image(
              image: AssetImage("assets/images/shop.png"),
              width: 500,
              height: 500,
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              "powered by",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "GLAMFITS ",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            )
          ],
        ));
  }
}
