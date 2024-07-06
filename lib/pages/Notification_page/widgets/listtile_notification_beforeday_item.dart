import 'package:flutter/material.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class LittileNotificationbeforeDayItemList extends StatelessWidget {
  const LittileNotificationbeforeDayItemList({
    super.key,
    required this.index,
    required this.colorlist,
    required this.titleList,
    required this.subtitleList,
    required this.timeNotification,
  });
  final int index;
  final List colorlist;
  final List titleList;
  final List subtitleList;
  final List timeNotification;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: colorlist[index],
      ),
      title: Row(
        children: [
          CustomText(text: titleList[index]),
          Spacer(),
          CustomText(
            text: timeNotification[index],
            fontSize: 14,
            //fontWeight: FontWeight.bold,
          )
        ],
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(right: 20),
        child: Text(
          subtitleList[index],
        ),
      ),
      subtitleTextStyle: TextStyle(color: Colors.grey),
    );
  }
}
