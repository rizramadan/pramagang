import 'package:flutter/material.dart';
import 'package:pramagang/screens/login-screen.dart';
import 'dart:async';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
   Timer(Duration(milliseconds: 2500), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => LoginScreen(),
          ));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Center(
          child: Image.asset(
            'assets/images/log.png',
            width: 500.0,
            height: 300.0,
          ),
        ));
  }
}
