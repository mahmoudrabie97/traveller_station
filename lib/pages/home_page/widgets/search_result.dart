import 'package:flutter/material.dart';
import 'package:traveller_station/pages/home_page/widgets/search_filter_page.dart';
import 'package:traveller_station/pages/home_page/widgets/searchresultsitemgrid.dart';
import 'package:traveller_station/pages/offers_page/widgets/offer_gridview_item.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CustomText(
          text: 'Search Results',
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const CustomText(
                    text: 'Search Results',
                    fontWeight: FontWeight.bold,
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              context.push(const SearchFilterPage());
                            },
                            icon: const Icon(
                              Icons.filter_list,
                            )),
                        const SizedBox(
                          width: 6,
                        ),
                        const CustomText(
                          text: 'Filters',
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
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
                  return const SearchResultIremGrid();
                },
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
