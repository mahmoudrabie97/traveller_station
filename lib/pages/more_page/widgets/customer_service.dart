import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:traveller_station/pages/more_page/widgets/about_travel_station_page.dart';
import 'package:traveller_station/pages/more_page/widgets/custom_container_more.dart';
import 'package:traveller_station/pages/more_page/widgets/help_page.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class CustomerServicePage extends StatelessWidget {
  const CustomerServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const CustomText(
            text: 'Customer Service',
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          )),
      // ignore: prefer_const_constructors
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              context.push(const HelpPage());
            },
            child: const Customercontainermore(
              color: Colors.white,
              textstring: 'Help',
              tetcolor: Colors.black,
              iconcolor: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: () {
              context.push(const AboutTravallerStaionPage());
            },
            child: const Customercontainermore(
              color: Colors.white,
              textstring: 'About Traveler Station',
              tetcolor: Colors.black,
              iconcolor: Colors.black,
            ),
          ),
          const Customercontainermore(
            color: Colors.white,
            textstring: 'Service Conditions',
            tetcolor: Colors.black,
            iconcolor: Colors.black,
          ),
          const Customercontainermore(
            color: Colors.white,
            textstring: 'Privacy',
            tetcolor: Colors.black,
            iconcolor: Colors.black,
          ),
        ],
      ),
    );
  }
}
