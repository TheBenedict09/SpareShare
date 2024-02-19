import 'package:flutter/material.dart';
import 'package:spareshare/Pages/HomePage.dart';
import 'package:spareshare/Pages/login_page.dart';
//import 'package:spareshare/Pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lime),
          useMaterial3: true,
          textTheme: TextTheme(
              headline1: TextStyle(fontFamily: 'Nunito', fontSize: 24))),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
