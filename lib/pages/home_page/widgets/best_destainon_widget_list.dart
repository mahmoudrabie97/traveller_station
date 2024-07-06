import 'package:flutter/material.dart';
import 'package:traveller_station/pages/home_page/widgets/location_information.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class BestDestnationWidgetList extends StatelessWidget {
  const BestDestnationWidgetList({
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
    return GestureDetector(
      onTap: () {
        context.push(InformationLocation());
      },
      child: Container(
        height: 140,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imagesString[index],
                width: 170,
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
                        ],
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          context.push(InformationLocation());
                        },
                        icon: Icon(
                          Icons.keyboard_double_arrow_right,
                          color: Colors.blue,
                        )),
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
