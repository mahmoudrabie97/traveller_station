import 'package:flutter/material.dart';
import 'package:traveller_station/pages/Notification_page/widgets/listtile_today_notification_item_list.dart';

class TodayNotificationList extends StatelessWidget {
  TodayNotificationList({super.key});
  final List<Color> colors = [
    const Color(0xffEBE4FF),
    const Color(0xffFFE6E9),
  ];
  final List titleSrting = [
    'Offer received',
    'It’s on us',
  ];
  final List subtitle = [
    'Great news! Someone has made you an offer. Tap here to check it out',
    'Use this promo code to get a free dry clean. Click here for more details',
  ];
  final List timeNotification = [
    '12:02 AM',
    '4:11 PM',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.separated(
          itemBuilder: (context, index) {
            return LittileNotificationTodayItemList(
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
          itemCount: 2),
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