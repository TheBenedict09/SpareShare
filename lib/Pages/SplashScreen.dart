import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:spareshare/Pages/login_page.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
               // width: 250,
                height: 260,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // boxShadow: [
                  //   BoxShadow(
                  //     blurRadius: 40,
                  //     spreadRadius: 0.001
                  //   )
                  // ]
                ),
                child: Image.asset('assets/Images/Logo - wBG.png')),
          ],
        ),
        splashIconSize: 411,
        duration: 2000,
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Color(0xffF36F38),
        pageTransitionType: PageTransitionType.topToBottom,
        animationDuration: Duration(milliseconds: 500),
        nextScreen: LoginPage());
  }
}
