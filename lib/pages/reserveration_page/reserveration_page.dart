import 'package:flutter/material.dart';
import 'package:traveller_station/pages/reserveration_page/widgets/trip_widet_item.dart';

class TripsPage extends StatelessWidget {
  TripsPage({super.key});
  final List imageString = [
    'assets/images/Mask Group 9.png',
    'assets/images/Mask Group 10.png',
    'assets/images/Mask Group 9.png',
    'assets/images/Mask Group 10.png'
  ];
  final List textString = [
    'Dubai Fountain',
    'Dubai Skyline',
    'Dubai Fountain',
    'Dubai Skyline'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Trips',
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 40,
                  );
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return TripWidgetItem(
                    imagestring: imageString,
                    index: index,
                    textstring: textString,
                  );
                }),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
