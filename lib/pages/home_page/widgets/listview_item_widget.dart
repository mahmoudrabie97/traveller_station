import 'package:flutter/material.dart';
import 'package:traveller_station/pages/home_page/widgets/expanstion_pannel.dart';
import 'package:traveller_station/pages/trips_page/trips_page.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class Listviewitemwidget extends StatelessWidget {
  const Listviewitemwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(TripsChoosingPage());
      },
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 180,
                          width: 250,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child:
                                Image.asset('assets/images/Mask Group 16.png'),
                          )),
                      SizedBox(
                        height: 13,
                      ),
                      const CustomText(
                        text: 'Travel Company ',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          CustomText(text: '(4.8)'),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 22),
                            child: CustomText(
                              text: '9',
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                      const ExpansionPanelExample(),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
