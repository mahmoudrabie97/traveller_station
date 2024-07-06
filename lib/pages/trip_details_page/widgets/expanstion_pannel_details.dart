import 'package:flutter/material.dart';

class ExpansionPaneltripDetails extends StatefulWidget {
  const ExpansionPaneltripDetails({super.key});

  @override
  _ExpansionPaneltripDetailsState createState() =>
      _ExpansionPaneltripDetailsState();
}

class _ExpansionPaneltripDetailsState extends State<ExpansionPaneltripDetails> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          backgroundColor: Colors.white,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return const ListTile(
              title: Text(
                'Description',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            );
          },
          body: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'This is a description text that will be displayed when the ExpansionPanel is expanded.3heeieudwduhwedehdhebdhebwhdbehwjbdhejwbdhjewbdhbwejdehwjbd',
            ),
          ),
          isExpanded: _isExpanded,
        ),
      ],
    );
  }
}
