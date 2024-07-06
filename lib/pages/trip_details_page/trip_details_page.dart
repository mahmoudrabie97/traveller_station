import 'package:flutter/material.dart';
import 'package:traveller_station/pages/Chatts_pages/trips_chat_page.dart';
import 'package:traveller_station/pages/trip_details_page/widgets/stack_details_item.dart';
import 'package:traveller_station/pages/trips_page/Register_trip_page.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/custombutton.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class TripDetailsPage extends StatelessWidget {
  const TripDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CustomText(
          text: 'Trip Details',
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const StackDetailsItem(),
                Row(
                  children: [
                    const CustomText(
                      text: 'Trip Details',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        context.push(TripsChatPage());
                      },
                      icon: Icon(
                        Icons.chat,
                        size: 30,
                      ),
                      color: Colors.blue,
                    )
                  ],
                ),
                const SizedBox(height: 16.0),
                const SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        TripDetailWidget(
                          label: 'Trip Name',
                          value: 'Transit Umrah',
                        ),
                        TripDetailWidget(
                          label: 'Number of Days',
                          value: '4-days',
                        ),
                        const SizedBox(height: 8.0),
                        TripDetailWidget(
                          label: 'Umrah Price',
                          value: '13500 L.E',
                        ),
                        const SizedBox(height: 8.0),
                        TripDetailWidget(
                          label: 'Hotel',
                          value: 'hotel name',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const CustomText(
                  text: 'Additional Details',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                const SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          'The trip includes Umrah costs, a return flight ticket between Cairo and Jeddah, and a 4-day stay in a hotel in Mecca, without considering the city of Saudi Arabia as a transit station.',
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Airline ticket price: starts from 10 thousand pounds, for travel on Saudi Airlines "Cairo - Jeddah".',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        buttonText: 'Back To Home',
                        onPressed: () {},
                        buttonColor: Colors.white,
                        txtColor: Colors.blue,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: CustomButton(
                        buttonText: 'Done',
                        onPressed: () {
                          context.push(RegisterTrip());
                        },
                        buttonColor: Colors.blue,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TripDetailWidget extends StatelessWidget {
  final String label;
  final String value;

  TripDetailWidget({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            '$label:',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        const SizedBox(width: 15.0),
        Expanded(
          flex: 3,
          child: Text(value),
        ),
      ],
    );
  }
}
