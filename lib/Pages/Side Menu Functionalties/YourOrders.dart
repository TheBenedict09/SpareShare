import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spareshare/Pages/HomePage.dart';

class YourOrders extends StatefulWidget {
  const YourOrders({super.key});

  @override
  State<YourOrders> createState() => _YourOrdersState();
}

class _YourOrdersState extends State<YourOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 59,
            ),
            Text(
              'Orders',
              style:
                  Theme.of(context).textTheme.headline2?.copyWith(fontSize: 21),
            ),
            SizedBox(
              height: 149,
            ),
            Lottie.asset('assets/Animations/NoOrders.json'),
            Text(
              'No Orders Yet',
              style:
                  Theme.of(context).textTheme.headline1?.copyWith(fontSize: 27),
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
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                child: Text(
                  'Start Ordering',
                  style: Theme.of(context).textTheme.headline1?.copyWith(
                        color: Colors.white,
                      ),
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(21))),
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xffEF4648))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
