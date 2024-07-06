import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:traveller_station/generated/l10n.dart';
import 'package:traveller_station/pages/Auth_page/login_page/login_page.dart';
import 'package:traveller_station/pages/more_page/widgets/custom_container_more.dart';
import 'package:traveller_station/pages/more_page/widgets/customer_service.dart';
import 'package:traveller_station/pages/settings_page/settings_page.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: CustomText(
            text: S.of(context).more,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          )),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              context.push(LoginPage());
            },
            child: Customercontainermore(
              color: Colors.white,
              textstring: S.of(context).login,
              tetcolor: Colors.black,
              iconcolor: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: () {
              context.push(const CustomerServicePage());
            },
            child: Customercontainermore(
              color: Colors.white,
              textstring: S.of(context).customerService,
              tetcolor: Colors.black,
              iconcolor: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: () {
              context.push(const SettingsPage());
            },
            child: Customercontainermore(
              color: Colors.white,
              textstring: S.of(context).Settings,
              tetcolor: Colors.black,
              iconcolor: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
