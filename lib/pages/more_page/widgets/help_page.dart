import 'package:flutter/material.dart';
import 'package:traveller_station/pages/more_page/widgets/my_account.dart';
import 'package:traveller_station/pages/more_page/widgets/payment_choosing.dart';
import 'package:traveller_station/pages/more_page/widgets/work_with_us.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const CustomText(
            text: 'Help',
            color: Colors.blue,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          )),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              text: 'How can help you?',
              fontSize: 20,
              color: Colors.blueGrey,
            ),
            GestureDetector(
              onTap: () {
                context.push(const MyAccountPage());
              },
              child: const CustomInfoContainer(
                containerString: 'My Account',
                icon1: Icons.person,
                icon2: Icons.arrow_forward_ios_outlined,
              ),
            ),
            GestureDetector(
              onTap: () {
                context.push(PaymentChosing());
              },
              child: const CustomInfoContainer(
                containerString: 'Payment',
                icon1: Icons.payment,
                icon2: Icons.arrow_forward_ios_outlined,
              ),
            ),
            CustomInfoContainer(
              containerString: 'My Support Request',
              icon1: Icons.mail,
              icon2: Icons.arrow_forward_ios_outlined,
            ),
            InkWell(
              onTap: () {
                context.push(WorkWithUsPAge());
              },
              child: const CustomInfoContainer(
                containerString: 'Work with us',
                icon1: Icons.work_rounded,
                icon2: Icons.arrow_forward_ios_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomInfoContainer extends StatelessWidget {
  const CustomInfoContainer({
    super.key,
    required this.containerString,
    required this.icon1,
    required this.icon2,
  });
  final String containerString;
  final IconData icon1;
  final IconData icon2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: const Color(0xffEDF1F5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                icon1,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 16,
              ),
              CustomText(
                text: containerString,
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              const Spacer(),
              Icon(
                icon2,
                color: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
