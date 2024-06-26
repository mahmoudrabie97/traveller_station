import 'package:flutter/material.dart';
import 'package:traveller_station/pages/home_page/widgets/stack_item_widget.dart';
import 'package:traveller_station/pages/home_page/widgets/tabBarItem_widget.dart';
import 'package:traveller_station/pages/home_page/widgets/tab_bar_view_items.dart';
import 'package:traveller_station/utilites/widgets/customtextformfield.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final TextEditingController _searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            TabBarItemWidget(tabController: _tabController),
            TabBarViewWidgets(tabController: _tabController)
          ],
        ),
      ),
    );
  }
}
