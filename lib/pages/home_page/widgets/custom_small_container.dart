import 'package:flutter/material.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class CustomSmallContainer extends StatelessWidget {
  const CustomSmallContainer({
    super.key,
    required this.containertext,
    required this.containerColor,
    required this.textcolor,
  });
  final String containertext;
  final Color containerColor;
  final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 4, right: 4),
        child: Container(
          padding: const EdgeInsets.all(3),
          height: 40,
          decoration: BoxDecoration(
              color: containerColor, borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: CustomText(
              text: containertext,
              color: textcolor,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomSmallContainerWithIcon extends StatelessWidget {
  const CustomSmallContainerWithIcon({
    super.key,
    required this.containertext,
    required this.containerColor,
    required this.textcolor,
  });
  final String containertext;
  final Color containerColor;
  final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 4, right: 4),
        child: Container(
          padding: const EdgeInsets.all(3),
          height: 40,
          decoration: BoxDecoration(
              color: containerColor, borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 5,
                ),
                CustomText(
                  text: containertext,
                  color: textcolor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
