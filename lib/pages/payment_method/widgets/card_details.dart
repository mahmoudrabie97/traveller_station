import 'package:flutter/material.dart';
import 'package:traveller_station/pages/payment_method/add_card_view.dart';
import 'package:traveller_station/pages/payment_method/reversation_pay_view.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/custombutton.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';
import 'package:traveller_station/utilites/widgets/customtextformfield.dart';

class CardDetails extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  //final TextEditingController _emailController = TextEditingController();
  final TextEditingController _cardnumber = TextEditingController();

  final TextEditingController _cardholderName = TextEditingController();
  final TextEditingController _expiredDate = TextEditingController();

  final TextEditingController _cvvcontroller = TextEditingController();
  final FocusNode field1 = FocusNode();
  final FocusNode field2 = FocusNode();
  final FocusNode field3 = FocusNode();
  final FocusNode field4 = FocusNode();
  CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomText(
            text: 'Card Details',
            color: Colors.blue,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/Card details.png'),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomText(text: 'Card Holder\'s Name'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 45,
                    child: CustomTextFormField(
                      controller: _cardholderName,
                      validator: (card) {
                        if (card!.isEmpty) {
                          return 'please enter your CardHolder Name';
                        }
                        return null;
                      },
                      focusnode: field1,
                      hinnntcolr: Colors.grey,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomText(text: 'Card Number'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 45,
                    child: CustomTextFormField(
                      controller: _cardnumber,
                      validator: (number) {
                        if (number!.isEmpty) {
                          return 'please enter your Card number';
                        }
                        return null;
                      },
                      focusnode: field2,
                      hinnntcolr: Colors.grey,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CustomText(text: 'Expiry Date'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 45,
                            child: CustomTextFormField(
                              controller: _expiredDate,
                              validator: (number) {
                                if (number!.isEmpty) {
                                  return 'please enter your Expired date';
                                }
                                return null;
                              },
                              focusnode: field3,
                              hinnntcolr: Colors.grey,
                            ),
                          ),
                        )
                      ],
                    )),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomText(text: 'cvv'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 45,
                            child: CustomTextFormField(
                              controller: _cvvcontroller,
                              validator: (number) {
                                if (number!.isEmpty) {
                                  return 'please enter your Cvv number';
                                }
                                return null;
                              },
                              focusnode: field4,
                              hinnntcolr: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomButton(
                    buttonText: 'Add Cart',
                    onPressed: () {
                      context.push(AddCartPage());
                    },
                    buttonColor: Colors.blue,
                    borderRadius: 5,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
