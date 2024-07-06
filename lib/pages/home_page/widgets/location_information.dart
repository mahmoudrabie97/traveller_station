import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traveller_station/pages/home_page/widgets/listview_item_widget.dart';
import 'package:traveller_station/pages/home_page/widgets/search_result.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/customtextformfield.dart';

class InformationLocation extends StatelessWidget {
  final TextEditingController _searchcontroller = TextEditingController();
  void _showBottomSheet({required BuildContext context}) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Container(
            height: 500,
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Dubia'),
                  trailing: Icon(Icons.close),
                  onTap: () {
                    // Handle Dubia selection
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Egypt'),
                  trailing: Icon(Icons.close),
                  onTap: () {
                    // Handle Egypt selection
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Sudia Arabia'),
                  trailing: Icon(Icons.close),
                  onTap: () {
                    // Handle Sudia Arabia selection
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Greek'),
                  trailing: Icon(Icons.close),
                  onTap: () {
                    // Handle Greek selection
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  InformationLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormField(
                  controller: _searchcontroller,
                  hintText: 'Search',
                  perfixicon: Icons.search,
                  suffixicon: Icons.filter_list,
                  perfixpressed: () {
                    if (_searchcontroller.text.isEmpty) {
                      _showBottomSheet(context: context);
                    } else {
                      context.push(SearchResult());
                    }
                  },
                  hinnntcolr: Colors.grey,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter the letter or the word that dou you want to search ';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return const Listviewitemwidget();
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      color: Colors.white,
                      height: 2,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
