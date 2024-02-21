import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))),
                child: Image.asset(
                  'assets/Images/7.avif',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 370,
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Ayush\'s Kitchen',
                          style: Theme.of(context)
                              .textTheme
                              .headline1
                              ?.copyWith(fontSize: 27),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Each sip of Ayush Coffee promises a journey of indulgence, awakening your senses with its smooth texture and irresistible depth. Expertly roasted to perfection, our coffee beans undergo a meticulous process to ensure optimal freshness and flavor retention.',
                          style: Theme.of(context)
                              .textTheme
                              .headline2
                              ?.copyWith(color: Colors.grey),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                          //alignment: Alignment.centerLeft,
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(
                                'Ratings',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2
                                    ?.copyWith(color: Colors.grey),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.location_pin,
                                color: Color(0xffCC2A49),
                              ),
                              Text(
                                '4.9 km',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2
                                    ?.copyWith(color: Colors.grey),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.thumb_up_sharp,
                                color: Colors.green,
                              ),
                              Text(
                                'Review',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2
                                    ?.copyWith(color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      )),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Available items',
                          style: Theme.of(context)
                              .textTheme
                              .headline1
                              ?.copyWith(fontSize: 21),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    for (int i = 0; i < 7; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          width: 370,
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
                                            'Rice, Mixed Veg',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline1
                                                ?.copyWith(fontSize: 19),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 5),
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            '10 kgs Available',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline1
                                                ?.copyWith(
                                                    fontSize: 16,
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
                                            'Add',
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
