import 'package:flutter/material.dart';

import '../../../utilites/widgets/customtext.dart';

class NotificationdateInfoWidget extends StatelessWidget {
  const NotificationdateInfoWidget({
    super.key,
    required this.dateinfo,
  });
  final String dateinfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8),
      child: Row(
        children: [
          CustomText(text: dateinfo),
          SizedBox(
            width: 3,
          ),
          Expanded(
            child: Container(
              height: .3,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
