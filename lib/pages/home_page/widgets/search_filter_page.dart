import 'package:flutter/material.dart';
import 'package:traveller_station/pages/home_page/widgets/custom_small_container.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class SearchFilterPage extends StatelessWidget {
  const SearchFilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 39, right: 50, top: 5),
              child: Row(
                children: [
                  CustomText(
                    text: 'search filter',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  Spacer(),
                  Icon(Icons.close)
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  CustomText(
                    text: 'type',
                    fontSize: 17,
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSmallContainer(
                  containertext: 'historical',
                  containerColor: Color(0xffEBEBEB),
                  textcolor: Colors.black,
                ),
                CustomSmallContainer(
                  containertext: 'Religious',
                  containerColor: Colors.blue,
                  textcolor: Colors.white,
                ),
                CustomSmallContainer(
                  containertext: 'Nature',
                  textcolor: Colors.black,
                  containerColor: Color(0xffEBEBEB),
                )
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  CustomText(
                    text: 'Price Range',
                    fontSize: 17,
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSmallContainer(
                  containertext: '\$5-\$10',
                  containerColor: Colors.blue,
                  textcolor: Colors.white,
                ),
                CustomSmallContainer(
                  containertext: '\$11-\$20',
                  containerColor: Color(0xffEBEBEB),
                  textcolor: Colors.black,
                ),
                CustomSmallContainer(
                  containertext: '\$11-\$20',
                  textcolor: Colors.black,
                  containerColor: Color(0xffEBEBEB),
                ),
              ],
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CustomText(
                      text: 'Categories',
                      fontSize: 17,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  )
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CustomText(
                      text: 'Ratings',
                      fontSize: 17,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSmallContainerWithIcon(
                  containertext: '4',
                  containerColor: Color(0xffEBEBEB),
                  textcolor: Colors.black,
                ),
                CustomSmallContainerWithIcon(
                  containertext: '3',
                  containerColor: Colors.blue,
                  textcolor: Colors.white,
                ),
                CustomSmallContainerWithIcon(
                  containertext: '2',
                  textcolor: Colors.black,
                  containerColor: Color(0xffEBEBEB),
                )
              ],
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CustomText(
                      text: 'Company',
                      fontSize: 17,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  )
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CustomText(text: 'Clear text', color: Colors.grey),
                  Spacer(),
                  CustomSmallContainer(
                      containertext: 'Show 19 results',
                      containerColor: Colors.blue,
                      textcolor: Colors.white)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
