import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.locationPin,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 5,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 150),
                  child: Text(
                    'Apt. 493 53586 Del Stream, Graycestad, ND 30996',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(fontSize: 15, color: Color(0xffCC2A49)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              width: double.infinity,
              height: 567,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: 370,
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Your cart',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    for (int i = 0; i < 7; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          width: 350,
                          height: 110,
                          decoration: BoxDecoration(
                              color: Color(0xffF99E4C).withOpacity(0.15),
                              borderRadius: BorderRadius.circular(21)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Container(
                                  height: 95,
                                  width: 95,
                                  color: Colors.transparent,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(21),
                                      child: Image.asset(
                                        'assets/Images/1.jpg',
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: Container(
                                  height: 95,
                                  width: 232,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(21)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 9),
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Annapurna Mess',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline1
                                                ?.copyWith(fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 5),
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Rice, Mixed Veg',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline1
                                                ?.copyWith(
                                                    fontSize: 14,
                                                    color: Colors.grey),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 9),
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            '2 Kg',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline1
                                                ?.copyWith(
                                                    fontSize: 22,
                                                    color: Color(0xffEF4648)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 175 + 16,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xffF36F38).withOpacity(0.9),
                        Color(0xffEF4648).withOpacity(0.9),
                        Color(0xff582841).withOpacity(0.9),
                        //Color(0xffF36F38),
                      ]),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Stack(
                children: [
                  Positioned(
                    left: 135,
                    child: Container(
                      width: 140,
                      height: 140,
                      child: ClipRRect(
                          child: Lottie.asset('assets/Animations/Food.json',
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 31,
                    child: Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21)),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Order Now',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Nunito',
                              fontSize: 24),
                        ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(21))),
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.black,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
