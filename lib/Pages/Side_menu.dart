import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spareshare/Pages/Side%20Menu%20Functionalties/AboutPage.dart';
import 'package:spareshare/Pages/Side%20Menu%20Functionalties/Addresses.dart';
import 'package:spareshare/Pages/Side%20Menu%20Functionalties/History.dart';
import 'package:spareshare/Pages/Side%20Menu%20Functionalties/YourOrders.dart';
import 'package:spareshare/Pages/login_page.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffCC2A49).withOpacity(0.25),
                Color(0xffF99E4C).withOpacity(0.25),
                Color(0xffF36F38).withOpacity(0.25),
                Color(0xffEF4648).withOpacity(0.25),
                // Color(0xff582841).withOpacity(0.25)
              ]),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            const InfoCard(
              name: 'Ayush',
              email: 'sabenedict09@gmail.com',
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Container(
                width: 370,
                child: Text('Food Orders:',
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(fontSize: 20)),
              ),
            ),
            Container(
              width: 370,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(21)),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return YourOrders();
                      }));
                    },
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.spoon,
                        color: Color(0xffCC2A49),
                      ),
                      title: Text(
                        'Your Orders',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return History();
                      }));
                    },
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.history,
                        color: Color(0xffF99E4C),
                      ),
                      title: Text(
                        'History',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Addresses();
                      }));
                    },
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.addressBook,
                        color: Color(0xffF36F38),
                      ),
                      title: Text(
                        'Addresses',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Container(
                width: 370,
                child: Text('More:',
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(fontSize: 20)),
              ),
            ),
            Container(
              width: 370,
              height: 130,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(21)),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AboutPage();
                      }));
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Color(0xffEF4648),
                      ),
                      title: Text(
                        'About',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      }));
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.logout,
                        color: Color(0xff582841),
                      ),
                      title: Text(
                        'Logout',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.name,
    required this.email,
  });
  final String name, email;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21), color: Colors.white),
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.person_2_outlined),
        ),
        title: Text(
          name,
          style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 20),
        ),
        subtitle: Text(
          email,
          style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 15),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
