import 'package:flutter/material.dart';
import 'package:traveller_station/pages/more_page/widgets/help_page.dart';
import 'package:traveller_station/pages/payment_method/payment_method_view.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class PaymentChosing extends StatelessWidget {
  const PaymentChosing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const CustomText(
            text: 'Payment',
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
              text: 'I want to add payment method',
              fontSize: 20,
              color: Colors.blueGrey,
            ),
            GestureDetector(
              onTap: () {
                context.push(PaymentMethodView());
              },
              child: const CustomInfoContainer(
                containerString: 'My payment account',
                icon1: Icons.person,
                icon2: Icons.arrow_forward_ios_outlined,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const CustomInfoContainer(
                containerString: 'The payment was declined',
                icon1: Icons.payment,
                icon2: Icons.arrow_forward_ios_outlined,
              ),
            ),
            const CustomInfoContainer(
              containerString: 'I have another issue regarding payment',
              icon1: Icons.mail,
              icon2: Icons.arrow_forward_ios_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
