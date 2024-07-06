import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:traveller_station/pages/payment_method/sucesfully_payment.dart';
import 'package:traveller_station/pages/payment_method/widgets/payment_row_options.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/custombutton.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class ReversationPayView extends StatefulWidget {
  const ReversationPayView({super.key});

  @override
  State<ReversationPayView> createState() => _ReversationPayViewState();
}

int quntitynum = 1;
void increasquntity() {
  if (quntitynum > 98) {
    return;
  } else {
    quntitynum++;
  }
}

void decreasequantity() {
  if (quntitynum == 1) {
    return;
  } else {
    quntitynum--;
  }
}

class _ReversationPayViewState extends State<ReversationPayView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        title: const CustomText(
          text: 'Pay now',
          color: Colors.blue,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(text: 'Your Reversation'),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomText(text: 'Dubai Trip'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: 'Lorem ipsum dolor sit amet',
                                    color: Colors.grey,
                                  ),
                                  CustomText(
                                    text: 'Lorem ipsum dolor sit amet',
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          decreasequantity();
                                        });
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius: 12,
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 14,
                                    ),
                                    Expanded(
                                        child: Text(quntitynum.toString())),
                                  ],
                                ),
                              )),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    increasquntity();
                                  });
                                },
                                child: CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 12,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 22,
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const CustomText(text: 'Payment methods'),
                const PaymentRowOptions(),
                Image.asset('assets/images/Group 5.png'),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomText(text: 'Details'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Row(
                              children: [
                                CustomText(text: 'Sub Total'),
                                Spacer(),
                                CustomText(text: '\$ 12,00'),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Row(
                              children: [
                                CustomText(text: 'Tax'),
                                Spacer(),
                                CustomText(text: '\$ 2,50'),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Row(
                              children: [
                                CustomText(text: 'insurance'),
                                Spacer(),
                                CustomText(text: '\$ 1.50,'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const Row(
                  children: [
                    CustomText(text: 'Total'),
                    Spacer(),
                    CustomText(text: '\$ 16,00,')
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomButton(
                    buttonText: 'Pay Now',
                    onPressed: () {
                      context.push(SucessfullyPayment());
                    },
                    buttonColor: Colors.blue,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
