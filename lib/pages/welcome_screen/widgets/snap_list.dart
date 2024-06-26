import 'package:flutter/material.dart';

class SnapCarousel extends StatelessWidget {
  const SnapCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List';

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160.0,
            color: Colors.red,
          ),
          SizedBox(
            width: 500,
          ),
          Container(
            width: 160.0,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
