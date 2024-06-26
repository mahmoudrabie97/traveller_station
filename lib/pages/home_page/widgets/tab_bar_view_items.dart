import 'package:flutter/material.dart';
import 'package:traveller_station/pages/home_page/widgets/best_offer_item.dart';
import 'package:traveller_station/pages/home_page/widgets/recommended_item.dart';
import 'package:traveller_station/pages/home_page/widgets/top_rated_item.dart';

class TabBarViewWidgets extends StatelessWidget {
  const TabBarViewWidgets({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 300,
      child: TabBarView(controller: _tabController, children: const [
        RecommendeItem(),
        BestOfferItem(),
        TopRatedItem(),
      ]),
    );
  }
}
