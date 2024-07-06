import 'package:flutter/material.dart';
import 'package:traveller_station/pages/home_page/widgets/famous_companies_widget_list.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class FamousCompaniesList extends StatelessWidget {
  FamousCompaniesList({super.key});
  final List imagesString = [
    'assets/images/Mask Group 16.png',
    'assets/images/Mask Group 16.png',
    'assets/images/Mask Group 16.png',
    'assets/images/Mask Group 16.png',
  ];
  final List countryString = [
    'Travel Company',
    'Novel Company',
    'Travel Company',
    'Novel Company',
  ];
  final List townString = [
    'Nework',
    'United Arab Emirate',
    'Grenece',
    'Dubia',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: 'Famous Compaines',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 7,
          ),
          SizedBox(
            height: 170,
            child: ListView.separated(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return FamousCompanieswidgetList(
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
