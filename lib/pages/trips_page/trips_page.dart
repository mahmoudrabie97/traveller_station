import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traveller_station/pages/offers_page/widgets/offer_gridview_item.dart';
import 'package:traveller_station/pages/trips_page/widgets/trips_choose_item.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class TripsChoosingPage extends StatelessWidget {
  const TripsChoosingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Trips',
          color: Colors.blue,
          fontSize: 18,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: .86),
              itemCount: 10,
              itemBuilder: (context, index) {
                return const TripsChoosingGridItem();
              },
            ),
          ),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
