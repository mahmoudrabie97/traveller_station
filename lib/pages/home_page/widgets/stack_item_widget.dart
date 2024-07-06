import 'package:flutter/material.dart';
import 'package:traveller_station/pages/Notification_page/notificaton_page.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class StackItemWidget extends StatelessWidget {
  const StackItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            'assets/images/Mask Group 3.png',
          ),
        ),
        const Positioned(
            top: 63,
            right: 16,
            child: Row(
              children: [
                CustomText(
                  text: 'DuBIA',
                  color: Colors.white,
                ),
                SizedBox(
                  width: 6,
                ),
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            )),
        Positioned(
            top: 63,
            left: 16,
            child: IconButton(
              onPressed: () {
                context.push(NotificationPage());
              },
              icon: Icon(
                Icons.notifications,
                size: 30,
                color: Colors.white,
              ),
            )),
        Positioned(
            bottom: 20,
            left: 16,
            child: Container(
              width: 150,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: Column(
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CustomText(
                        text: 'Today\'s Weather',
                        fontSize: 8,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/Icon.png',
                          width: 28,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CustomText(text: '26°C')
                      ],
                    ),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
