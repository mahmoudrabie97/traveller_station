import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:traveller_station/utilites/widgets/custombutton.dart';

class GoogleMapPage extends StatelessWidget {
  const GoogleMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('detect location'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Positioned(
                    child: Image.asset(
                      'assets/images/Map Background.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 20.0,
                    left: 16.0,
                    right: 16.0,
                    child: CustomButton(
                      buttonText: 'Shrewsbury, Pennsylvania(PA)',
                      txtColor: Colors.black,
                      onPressed: () {},
                      buttonColor: Colors.white,
                    ),
                  ),
                  Positioned(
                    bottom: 300.0,
                    left: 16.0,
                    right: 16.0,
                    child: CustomButton(
                      buttonText: 'Confirm Location',
                      onPressed: () {},
                      buttonColor: Colors.blue,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
