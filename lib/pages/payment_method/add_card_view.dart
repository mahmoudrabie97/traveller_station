import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class AddCartPage extends StatefulWidget {
  const AddCartPage({super.key});

  @override
  AddCartPageState createState() => AddCartPageState();
}

class AddCartPageState extends State<AddCartPage> {
  int _currentPageIndex = 0;
  final List<String> _imageUrls = [
    'assets/images/Card details.png',
    'assets/images/Card details.png',
    'assets/images/Card details.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDF1F5),
      appBar: AppBar(
        backgroundColor: const Color(0xffEDF1F5),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  child: Image.asset('assets/images/person.png')),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                itemCount: _imageUrls.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPageIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Image.asset(
                    _imageUrls[index],
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _imageUrls.asMap().entries.map((entry) {
                return Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPageIndex == entry.key
                        ? Colors.blue
                        : Colors.grey.withOpacity(0.5),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CustomText(
                    text: 'Transactions',
                    fontWeight: FontWeight.bold,
                  ),
                  Spacer(),
                  Icon(Icons.more_horiz),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return TransactionWidgetItem();
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class TransactionWidgetItem extends StatelessWidget {
  const TransactionWidgetItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/Playstation Logo.png'),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: 'hotel'),
              CustomText(
                text: 'Fifa 2022 Game',
                color: Colors.grey,
              ),
            ],
          ),
          const Column(
            children: [
              CustomText(
                text: '-\$53.95',
                color: Colors.red,
              ),
              CustomText(
                text: '-\$53.95',
                color: Colors.grey,
              )
            ],
          )
        ],
      ),
    );
  }
}
