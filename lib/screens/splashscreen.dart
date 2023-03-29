import 'package:flutter/material.dart';
import 'package:pkkfirdaus/screens/Login/signin_screen.dart';
import 'dart:async';
import 'package:pkkfirdaus/screens/Login/signup_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => SignInScreen()),
        (Route<dynamic> route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    MediaQueryData queryData; queryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/pkk.png',
              fit: BoxFit.contain,
              height: 160,
              width: 200,
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Aplikasi Pemberdayaan Dan Kesejahteraan Keluarga",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,   
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Desa Firdaus, Kec. Sei Rampah",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
