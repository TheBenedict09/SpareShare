import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spareshare/Pages/HomePage.dart';

class OTPpage extends StatefulWidget {
  const OTPpage({super.key});

  @override
  State<OTPpage> createState() => _OTPpageState();
}

class _OTPpageState extends State<OTPpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffCC2A49),
            Color(0xffF99E4C),
            Color(0xffF36F38),
            Color(0xffEF4648),
            // Color(0xff582841),
          ],
          stops: [0.0, 0.25, 0.5, 0.75],
        )),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
              ),
              Text(
                'We have send a verification code:',
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21))),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: Lottie.asset('assets/Animations/PeekingCat.json'),
                  ),
                ],
              ),
              Container(
                height: 60,
                width: 350,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(21)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }));
                  },
                  child: Text(
                    'Verify OTP',
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(21))),
                      backgroundColor: MaterialStatePropertyAll(Colors.black)),
                ),
              ),
              SizedBox(
                height: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
