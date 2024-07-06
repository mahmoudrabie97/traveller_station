import 'package:flutter/material.dart';
import 'package:traveller_station/pages/Chatts_pages/chatting_work_with_us.dart';
import 'package:traveller_station/pages/more_page/widgets/help_page.dart';
import 'package:traveller_station/pages/more_page/widgets/my_account.dart';
import 'package:traveller_station/pages/more_page/widgets/payment_choosing.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class WorkWithUsPAge extends StatelessWidget {
  const WorkWithUsPAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const CustomText(
            text: 'Work With Us',
            color: Colors.blue,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          )),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                context.push(ChatWorkWithUsPage());
              },
              child: const CustomInfoContainer(
                containerString: 'I want to work on the application',
                icon1: Icons.person,
                icon2: Icons.arrow_forward_ios_outlined,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const CustomInfoContainer(
                containerString: 'I want to join the application as a company',
                icon1: Icons.payment,
                icon2: Icons.arrow_forward_ios_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
