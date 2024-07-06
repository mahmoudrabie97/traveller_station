import 'package:flutter/material.dart';
import 'package:traveller_station/pages/home_page/widgets/best_destainon_widget_list.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class BestDestnationList extends StatelessWidget {
  BestDestnationList({super.key});
  final List imagesString = [
    'assets/images/Mask Group 1.png',
    'assets/images/Mask Group 2.png',
    'assets/images/Mask Group 1.png',
    'assets/images/Mask Group 2.png',
  ];
  final List countryString = [
    'Santriani',
    'Dubia',
    'Santriani',
    'Dubia',
  ];
  final List townString = [
    'Grenece',
    'United Arab Emirate',
    'Grenece',
    'United Arab Emirate',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: 'Best destinations',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 150,
            child: ListView.separated(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BestDestnationWidgetList(
                  imagesString: imagesString,
                  index: index,
                  countrystring: countryString,
                  twonString: townString,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 15,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
