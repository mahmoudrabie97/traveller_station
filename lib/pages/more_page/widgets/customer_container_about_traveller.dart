import 'package:flutter/material.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class CustomercontainerAboutTravel extends StatelessWidget {
  const CustomercontainerAboutTravel({
    super.key,
    required this.color,
    required this.tetcolor,
    required this.textstring,
    required this.iconcolor,
    required this.textstring2,
  });
  final Color color;
  final Color tetcolor;
  final Color iconcolor;
  final String textstring;
  final String textstring2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 90,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: textstring,
                      color: tetcolor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      text: textstring2,
                      color: tetcolor,
                      fontSize: 14,
                    ),
                  ],
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
