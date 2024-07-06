import 'package:flutter/material.dart';
import 'package:traveller_station/pages/Notification_page/widgets/notification_body.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationBody(),
    );
  }
}
