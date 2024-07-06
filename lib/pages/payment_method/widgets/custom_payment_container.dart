import 'package:flutter/material.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class CustomPAymentRow extends StatelessWidget {
  const CustomPAymentRow({
    super.key,
    required this.text1,
    required this.text2,
  });
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(text: text1),
        const Spacer(),
        CustomText(text: text2),
      ],
    );
  }
}
