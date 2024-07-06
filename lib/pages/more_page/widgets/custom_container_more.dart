import 'package:flutter/material.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class Customercontainermore extends StatelessWidget {
  const Customercontainermore({
    super.key,
    required this.color,
    required this.tetcolor,
    required this.textstring,
    required this.iconcolor,
  });
  final Color color;
  final Color tetcolor;
  final Color iconcolor;
  final String textstring;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.grey)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: CustomText(
                  text: textstring,
                  color: tetcolor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              IconButton(
                  color: iconcolor,
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios))
            ],
          ),
        ),
      ),
    );
  }
}
