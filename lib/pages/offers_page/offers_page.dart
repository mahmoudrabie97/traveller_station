import 'package:flutter/material.dart';
import 'package:traveller_station/pages/offers_page/widgets/offer_gridview_item.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CustomText(
          text: 'Offers',
          color: Colors.blue,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 20,
                  childAspectRatio: .79),
              itemCount: 10,
              itemBuilder: (context, index) {
                return const OfferGridViewItem();
              },
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
