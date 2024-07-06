import 'package:flutter/material.dart';
import 'package:traveller_station/pages/Chatts_pages/chatting_work_with_us.dart';
import 'package:traveller_station/pages/Chatts_pages/trips_chat_page.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class TripWidgetItem extends StatelessWidget {
  const TripWidgetItem({
    super.key,
    required this.imagestring,
    required this.index,
    required this.textstring,
  });
  final List imagestring;
  final List textstring;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.asset(imagestring[index])),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 20),
                  child: CustomText(text: textstring[index]),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: CustomText(
                    text: '23.11 - 30.11.2020',
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  color: Colors.blue,
                  onPressed: () {
                    context.push(TripsChatPage());
                  },
                  icon: const Icon(Icons.message_rounded)),
            )
          ],
        ),
      ],
    );
  }
}
