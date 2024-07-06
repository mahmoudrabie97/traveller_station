import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class StackNotificationItemWidget extends StatelessWidget {
  const StackNotificationItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          width: double.infinity,
          height: 130,
          child: Image.asset(
            'assets/images/Mask Group 3.png',
            fit: BoxFit.cover,
            width: 20,
          ),
        ),
        const Positioned(
          bottom: 28,
          left: 120,
          child: CustomText(
            text: 'Notification',
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Positioned(
          top: 63,
          left: 16,
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 30,
                color: Colors.white,
              )),
        ),
      ],
    );
  }
}
