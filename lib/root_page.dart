import 'package:flutter/material.dart';
import 'package:traveller_station/pages/reserveration_page/reserveration_page.dart';
import 'package:traveller_station/pages/home_page/home_page.dart';
import 'package:traveller_station/pages/more_page/more_page.dart';
import 'package:traveller_station/pages/offers_page/offers_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentindex = 0;
  final List<Widget> pages = <Widget>[
    const HomePage(),
    const OfferPage(),
    const ReserverationPage(),
    const MorePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: pages[currentindex],
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  Widget buildBottomNavBar() {
    return BottomNavigationBar(
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      unselectedLabelStyle: const TextStyle(color: Colors.red),
      currentIndex: currentindex,
      onTap: (value) {
        setState(() {
          currentindex = value;
          //  if (currentindex == 2) {}
        });
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home '),
        BottomNavigationBarItem(
            icon: Icon(Icons.percent_rounded), label: 'Offers '),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_border_outlined),
          label: 'Favourites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: 'More',
        ),
      ],
    );
  }
}
