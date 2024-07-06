import 'package:flutter/material.dart';
import 'package:traveller_station/pages/payment_method/widgets/custom_payment_container.dart';
import 'package:traveller_station/utilites/widgets/custombutton.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class VisitTheCompanyHeadquare extends StatelessWidget {
  const VisitTheCompanyHeadquare({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.blue,
                  child: Image.asset(
                    'assets/images/visit_com_pay.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color(
                      0xffE4E5E9,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CustomText(
                              text: 'Payment Details',
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        CustomPAymentRow(
                          text1: 'Company Address',
                          text2: '3QP4+HR Minya',
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        CustomPAymentRow(
                          text1: 'Payment code',
                          text2: '12345678910111213',
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        CustomPAymentRow(
                            text1: ' Payment deadline', text2: 'July 28, 2024'),
                        SizedBox(
                          height: 7,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomButton(
                      buttonText: 'Print Receipt',
                      txtColor: Colors.blue,
                      onPressed: () {},
                      buttonColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomButton(
                      buttonText: 'Done',
                      onPressed: () {},
                      buttonColor: Colors.blue,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      )),
    );
  }
}
