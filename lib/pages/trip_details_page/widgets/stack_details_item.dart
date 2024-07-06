import 'package:flutter/material.dart';
import 'package:traveller_station/pages/Notification_page/notificaton_page.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class StackDetailsItem extends StatelessWidget {
  const StackDetailsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          width: double.infinity,
          child: Image.asset(
            'assets/images/background.png',
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
