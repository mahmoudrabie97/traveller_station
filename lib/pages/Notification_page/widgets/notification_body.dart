import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:traveller_station/pages/Notification_page/widgets/notification_before_today.dart';
import 'package:traveller_station/pages/Notification_page/widgets/notificationdate_info.dart';
import 'package:traveller_station/pages/Notification_page/widgets/stack_notification_item.dart';
import 'package:traveller_station/pages/Notification_page/widgets/today_notification_list.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Column(
        children: [
          const StackNotificationItemWidget(),
          const SizedBox(
            height: 13,
          ),
          const NotificationdateInfoWidget(
            dateinfo: ' today',
          ),
          TodayNotificationList(),
          const NotificationdateInfoWidget(
            dateinfo: 'Monday, January 12th',
          ),
          NotificationBeforeTodayList(),
        ],
      ),
    );
  }
}
