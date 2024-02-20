import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spareshare/Pages/Cart.dart';
import 'package:spareshare/Refractor_Items/TcarouselImages.dart';
import 'package:spareshare/utils/constants/Image_string.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xffCC2A49).withOpacity(0.9),
                        Color(0xffF99E4C).withOpacity(0.9),
                        //Color(0xffF36F38),
                      ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 380,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.menu,
                              color: Colors.black,
                            )),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(FontAwesomeIcons.locationPin),
                        // SizedBox(
                        //   width: 1,
                        // ),
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 230),
                          child: Text(
                            'Apt. 493 53586 Del Stream, Graycestad, ND 30996',
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                ?.copyWith(fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Cart();
                              }));
                            },
                            icon: Icon(
                              FontAwesomeIcons.cartShopping,
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 370,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(21),
                        boxShadow: [
                          BoxShadow(blurRadius: 1, color: Color(0xffCC2A49))
                        ]),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          FontAwesomeIcons.search,
                          color: Color(0xffCC2A49),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText:
                                  'Restaurant name, cuisine, or a dish...',
                              hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 18), // Change hint text color here
                              border: InputBorder.none,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 650,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 370,
                      child: Column(
                        children: [
                          Container(
                            width: 370,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              ' Today\'s Special',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          CarouselSlider(
                              items: [
                                TcaraouselImage(
                                  imageUrl: Timages.i1,
                                ),
                                TcaraouselImage(
                                  imageUrl: Timages.i2,
                                ),
                                TcaraouselImage(
                                  imageUrl: Timages.i3,
                                ),
                                TcaraouselImage(
                                  imageUrl: Timages.i4,
                                ),
                                TcaraouselImage(
                                  imageUrl: Timages.i5,
                                ),
                                TcaraouselImage(
                                  imageUrl: Timages.i6,
                                ),
                                TcaraouselImage(
                                  imageUrl: Timages.i7,
                                ),
                              ],
                              options: CarouselOptions(
                                  enableInfiniteScroll: true,
                                  autoPlay: true,
                                  autoPlayAnimationDuration:
                                      Duration(milliseconds: 800),
                                  viewportFraction: 1)),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Container(
                              width: 370,
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Restaurants near you:',
                                style: Theme.of(context).textTheme.headline1,
                              ),
                            ),
                          ),
                          for (int i = 0; i < 10; i++)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 21),
                              child: Container(
                                width: 370,
                                height: 200,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(21)),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                      height: 250,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(21),
                                          child: Image.asset(
                                            'assets/Images/7.avif',
                                            fit: BoxFit.cover,
                                          )),
                                    )),
                                    Expanded(
                                        child: Container(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Text(
                                              'Ayush\'s kitchen',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline1
                                                  ?.copyWith(fontSize: 20),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 15,
                                            ),
                                            child: Container(
                                                alignment: Alignment.topLeft,
                                                child: Icon(
                                                  Icons.star,
                                                  color: Colors.green,
                                                )),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: 120,
                                            width: 150,
                                            color: Colors.transparent,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                'Each sip of Ayush Coffee promises a journey of indulgence, awakening your senses with its smooth texture and irresistible depth. Expertly roasted to perfection, our coffee beans undergo a meticulous process to ensure optimal freshness and flavor retention.',
                                                textAlign: TextAlign.justify,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline1
                                                    ?.copyWith(fontSize: 15),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
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
            )
          ],
        ),
      ),
    );
  }
}
