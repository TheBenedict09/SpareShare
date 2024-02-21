import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Addresses extends StatefulWidget {
  const Addresses({super.key});

  @override
  State<Addresses> createState() => _AddressesState();
}

class _AddressesState extends State<Addresses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey.shade200,
        child: Column(
          children: [
            SizedBox(
              height: 59,
            ),
            Text(
              'My Addresses',
              style:
                  Theme.of(context).textTheme.headline2?.copyWith(fontSize: 21),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 769,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: 370,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(21)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            FontAwesomeIcons.add,
                            color: Color(0xffCC2A49),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Add address',
                            style: Theme.of(context)
                                .textTheme
                                .headline2
                                ?.copyWith(
                                    fontSize: 18, color: Color(0xffCC2A49)),
                          ),
                          Container(
                            width: 190,
                            color: Colors.transparent,
                            child: Icon(FontAwesomeIcons.arrowRight),
                            alignment: Alignment.centerRight,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    for (int i = 0; i < 7; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 21),
                        child: Container(
                          width: 370,
                          height: 140,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xffCC2A49).withOpacity(0.25),
                                Color(0xffF99E4C).withOpacity(0.25),
                              ]),
                              borderRadius: BorderRadius.circular(21)),
                          child: Row(
                            children: [
                              Container(
                                width: 70,
                                color: Colors.transparent,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 14,
                                    ),
                                    Icon(FontAwesomeIcons.home),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text('69 km')
                                  ],
                                ),
                              ),
                              Container(
                                width: 295,
                                color: Colors.transparent,
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Home',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2
                                              ?.copyWith(fontSize: 18),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          '42, Route de Satigny, Geneva, 1242, Switzerland',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2
                                              ?.copyWith(
                                                  color: Colors.black
                                                      .withOpacity(0.5)),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Edit',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline2
                                                  ?.copyWith(
                                                      color:
                                                          Color(0xffCC2A49))),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
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
    );
  }
}
