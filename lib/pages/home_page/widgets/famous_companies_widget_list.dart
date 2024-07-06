import 'package:flutter/material.dart';
import 'package:traveller_station/pages/Chatts_pages/trips_chat_page.dart';
import 'package:traveller_station/pages/reserveration_page/reserveration_page.dart';
import 'package:traveller_station/pages/trip_details_page/trip_details_page.dart';
import 'package:traveller_station/pages/trips_page/trips_page.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class FamousCompanieswidgetList extends StatelessWidget {
  const FamousCompanieswidgetList({
    super.key,
    required this.imagesString,
    required this.index,
    required this.countrystring,
    required this.twonString,
  });

  final List imagesString;
  final List countrystring;
  final List twonString;

  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(TripsChoosingPage());
      },
      child: Container(
        height: 160,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.only(top: 8, left: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imagesString[index],
                width: 80,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 2,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: countrystring[index]),
                          Expanded(
                            child: Text(
                              twonString[index],
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              CustomText(
                                text: '4.6',
                                color: Colors.grey,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
