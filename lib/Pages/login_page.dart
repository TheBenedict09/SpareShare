import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spareshare/Pages/EmailLogin.dart';
import 'package:spareshare/Pages/OTP.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
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
            ])),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 125,
              ),
              Container(
                  width: 200,
                  height: 200,
                  child: Lottie.asset('assets/Animations/Login.json')),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 350,
                alignment: Alignment.topLeft,
                child: Text(
                  'Sign in:',
                  style: TextStyle(fontFamily: 'Nunito', fontSize: 30),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(21),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        hintText: 'Enter Phone Number',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21))),
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 60,
                width: 350,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(21)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return OTPpage();
                    }));
                  },
                  child: Text(
                    'Send OTP',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 24),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(21))),
                      backgroundColor: MaterialStatePropertyAll(Colors.black)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '-----------------------   OR   -----------------------',
                style: TextStyle(fontSize: 21, color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 60,
                width: 350,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(21)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return EmailLogin();
                    }));
                  },
                  child: Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Continue with Email',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(21))),
                      backgroundColor: MaterialStatePropertyAll(Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
