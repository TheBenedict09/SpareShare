import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spareshare/Pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Hero(
          tag: 'logo',
          child: Container(
            width: 270,
            height: 270,
            child: Image.asset('assets/Images/Logo - wBG.png'),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
             Color(0xffCC2A49),
              Color(0xffF99E4C),
              Color(0xffF36F38),
              Color(0xffEF4648),
              Color(0xff582841)
            ],
          ),
        ),
      ),
    );
  }
}
