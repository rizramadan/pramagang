import 'package:flutter/material.dart';
import 'package:pramagang/screens/login_page.dart';
import 'package:pramagang/screens/register_page.dart';
import 'package:pramagang/tampilan/auth_screen_view.dart';
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
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (ctx) => AuthScreenView(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Center(
          child: Image.asset(
            'assets/images/jjj.png',
            width: 500.0,
            height: 300.0,
          ),
        ));
  }
}
