import 'package:flutter/material.dart';
import 'package:traveller_station/pages/more_page/widgets/customer_container_about_traveller.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class AboutTravallerStaionPage extends StatelessWidget {
  const AboutTravallerStaionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const CustomText(
            text: 'About traveler station',
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          )),
      // ignore: prefer_const_constructors
      body: Column(
        children: const [
          CustomercontainerAboutTravel(
            color: Colors.blue,
            textstring: 'Who are we',
            tetcolor: Colors.white,
            iconcolor: Colors.white,
            textstring2: 'Learn more about Traveler station',
          ),
          CustomercontainerAboutTravel(
            color: Colors.white,
            textstring: 'Version',
            tetcolor: Colors.black,
            iconcolor: Colors.black,
            textstring2: '222.555.66',
          ),
        ],
      ),
    );
  }
}
