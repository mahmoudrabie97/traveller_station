import 'package:flutter/material.dart';
import 'package:traveller_station/pages/Notification_page/widgets/listtile_notification_beforeday_item.dart';
import 'package:traveller_station/pages/Notification_page/widgets/listtile_today_notification_item_list.dart';

class NotificationBeforeTodayList extends StatelessWidget {
  NotificationBeforeTodayList({super.key});
  final List<Color> colors = [
    const Color(0xffEBE4FF),
    const Color(0xffFFE6E9),
    const Color(0xffFFECC2),
    const Color(0xffDDEBFF),
  ];
  final List titleSrting = [
    'Whoop Whoop!',
    'It’s Done',
    'New Message',
    'Clear Inbox',
  ];
  final List subtitle = [
    'Great news! Someone has made you an offer. Tap here to check it out',
    'Your request is one step closer to being done 🙌👌',
    'Your request is one step closer to being done 🙌👌',
    'Your request is one step closer to being done 🙌👌',
  ];
  final List timeNotification = [
    '12:02 AM',
    '4:11 PM',
    '12:02 AM',
    '4:11 PM',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            return LittileNotificationbeforeDayItemList(
              index: index,
              colorlist: colors,
              subtitleList: subtitle,
              timeNotification: timeNotification,
              titleList: titleSrting,
            );
          },
          separatorBuilder: ((context, index) {
            return const SizedBox(
              height: 10,
            );
          }),
          itemCount: 4),
    );
  }
}


  //  return const Padding(
  //     padding: EdgeInsets.all(8.0),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       children: [
  //         CircleAvatar(
  //           backgroundColor: Color(0xffEBE4FF),
  //         ),
  //         Padding(
  //           padding: EdgeInsets.all(8.0),
  //           child: Expanded(
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 CustomText(
  //                   text: 'Offer recived',
  //                   fontSize: 12,
  //                   fontWeight: FontWeight.bold,
  //                 ),
  //                 SizedBox(
  //                   height: 7,
  //                 ),
  //                 Text(
  //                   overflow: TextOverflow.ellipsis,
  //                   'Great news! Someone has made you an offer. Tap here to check it out,',
  //                   style: TextStyle(
  //                     fontSize: 10,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         )
  //       ],
  //     ),
  //   );