import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EmailLogin extends StatefulWidget {
  const EmailLogin({super.key});

  @override
  State<EmailLogin> createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
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
              Color(0xff582841)
            ],
                stops: [
              0.1,
              0.7,
              0.9,
              1,
              2
            ])),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 100,
            ),
            Container(
                width: 230,
                height: 230,
                child: Lottie.asset('assets/Animations/Email.json')),
            SizedBox(
              height: 50,
            ),
            Container(
                width: 350,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter Email:',
                  style: TextStyle(fontFamily: 'Nunito', fontSize: 20),
                )),
            Container(
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(21),
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21))),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 350,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter Password:',
                  style: TextStyle(fontFamily: 'Nunito', fontSize: 20),
                )),
            Container(
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(21),
                ),
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21))),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 350,
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    'Forgot your Password?',
                    style: TextStyle(fontFamily: 'Nunito', fontSize: 15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              width: 350,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(21)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return EmailLogin();
                  }));
                },
                child: Text(
                  'Sign In',
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
          ]),
        ),
      ),
    );
  }
}
