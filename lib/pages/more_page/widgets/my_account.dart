import 'package:flutter/material.dart';
import 'package:traveller_station/pages/more_page/widgets/custom_container_more.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const CustomText(
            text: 'My Account',
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          )),
      // ignore: prefer_const_constructors
      body: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Customercontainermore(
              color: Colors.blue,
              textstring: 'I want to update my account',
              tetcolor: Colors.white,
              iconcolor: Colors.white,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Customercontainermore(
              color: Colors.white,
              textstring: 'I want to delete my account ',
              tetcolor: Colors.black,
              iconcolor: Colors.black,
            ),
          ),
          const Customercontainermore(
            color: Colors.white,
            textstring: 'I have a privacy related question',
            tetcolor: Colors.black,
            iconcolor: Colors.black,
          ),
        ],
      ),
    );
  }
}
