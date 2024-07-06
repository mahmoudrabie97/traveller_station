import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:traveller_station/pages/googlemaps/detect_location_page.dart';
import 'package:traveller_station/pages/home_page/widgets/best_destnation_item_list.dart';
import 'package:traveller_station/pages/home_page/widgets/famous_compaines_list.dart';
import 'package:traveller_station/pages/home_page/widgets/stack_item_widget.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';
import 'package:traveller_station/utilites/widgets/customtextformfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final TextEditingController _searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StackItemWidget(),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFormField(
                controller: _searchcontroller,
                hintText: 'Search',
                perfixicon: Icons.search,
                suffixicon: Icons.filter_list,
                hinnntcolr: Colors.grey,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter the letter or the word that dou you want to search ';
                  }
                  return null;
                },
              ),
            ),
            // TabBarItemWidget(tabController: _tabController),
            //TabBarViewWidgets(tabController: _tabController)
            const SizedBox(
              height: 12,
            ),

            GestureDetector(
              onTap: () {
                context.push(DetectLocationPage());
              },
              child: const Padding(
                padding: EdgeInsets.only(top: 8, left: 20, right: 20),
                child: Row(
                  children: [
                    CustomText(
                      text: 'Detect Location',
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.location_on,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            // ignore: prefer_const_constructors
            BestDestnationList(),
            SingleChildScrollView(child: FamousCompaniesList()),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
