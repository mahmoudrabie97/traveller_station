import 'package:flutter/material.dart';

class TabBarItemWidget extends StatelessWidget {
  const TabBarItemWidget({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
          controller: _tabController,
          labelColor: Colors.blue,
          dividerColor: Colors.white,
          indicator: BoxDecoration(),

          //labelColor: Colors.grey,
          tabs: const [
            Tab(
              text: 'Recommended',
            ),
            Tab(
              text: 'Best Offers',
            ),
            Tab(
              text: ' Top Rates',
            ),
          ]),
    );
  }
}
