import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:traveller_station/pages/Chatts_pages/trips_chat_page.dart';
import 'package:traveller_station/pages/payment_method/reversation_pay_view.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/custombutton.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';
import 'package:traveller_station/utilites/widgets/customtextformfield.dart';

class RegisterTrip extends StatelessWidget {
  RegisterTrip({super.key});

  final _formkey = GlobalKey<FormState>();
  //final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phonenumber = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();

  final TextEditingController _fullnameController = TextEditingController();
  final FocusNode field1 = FocusNode();
  final FocusNode field2 = FocusNode();
  final FocusNode field3 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: 'Register Trip',
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(text: 'Full Name'),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFormField(
                    controller: _fullnameController,
                    validator: (password) {
                      if (password!.isEmpty) {
                        return 'please enter your full Name';
                      }
                      return null;
                    },
                    focusnode: field1,
                    hintText: ' Enter your full Name',
                    hinnntcolr: Colors.grey,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              height: 75,
                              width: 120,
                              child: const IntlPhoneField(
                                decoration: InputDecoration(
                                  labelText: 'Phone Number',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                //keyboardType: TextInputType.phone,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 70,
                          child: CustomTextFormField(
                            controller: _phonenumber,
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'please enter your phone';
                              }
                              return null;
                            },
                            hintText: ' phone number',
                            hinnntcolr: Colors.grey,
                            focusnode: field2,
                            onsubmitted: (value) {
                              FocusScope.of(context).requestFocus(field2);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    text: 'Email Address',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                    controller: _emailcontroller,
                    validator: (password) {
                      if (password!.isEmpty) {
                        return 'please enter your Email';
                      }
                      return null;
                    },
                    focusnode: field3,
                    hintText: ' Enter your email',
                    hinnntcolr: Colors.grey,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8, right: 8, top: 8),
                    child: CustomText(
                      text: 'Chosse your Payement Methods',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const PaymentChosen(),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      CustomText(
                        text: 'Ask About Any thing? Chatting now',
                        color: Colors.blue,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            context.push(TripsChatPage());
                          },
                          icon: Icon(
                            Icons.chat,
                            color: Colors.blue,
                            size: 35,
                          )),
                    ],
                  ),
                  const CustomText(text: 'AttachMent'),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration:
                            const BoxDecoration(color: Color(0xffF0F4F8)),
                        child: const Icon(Icons.add),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration:
                            const BoxDecoration(color: Color(0xffF0F4F8)),
                        child: const Icon(Icons.add),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration:
                            const BoxDecoration(color: Color(0xffF0F4F8)),
                        child: const Icon(Icons.add),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration:
                            const BoxDecoration(color: Color(0xffF0F4F8)),
                        child: const Icon(Icons.add),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration:
                            const BoxDecoration(color: Color(0xffF0F4F8)),
                        child: const Icon(Icons.add),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: CustomButton(
                      buttonText: 'Register',
                      onPressed: () {
                        context.push(ReversationPayView());
                      },
                      buttonColor: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const CustomText(
                    text: 'I agree with Term of Conditions and Privacy Policy',
                    color: Colors.blue,
                    fontSize: 13,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentChosen extends StatefulWidget {
  const PaymentChosen({super.key});

  @override
  State<PaymentChosen> createState() => _PaymentChosenState();
}

class _PaymentChosenState extends State<PaymentChosen> {
  String? _selectedPaymentMethod;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const ListTile(
                      title: Text('Payment Methods'),
                    ),
                    RadioListTile<String>(
                      title: const CustomText(
                        text: 'Visit the company headquarters',
                        color: Colors.blue,
                      ),
                      value: 'visit_headquarters',
                      groupValue: _selectedPaymentMethod,
                      onChanged: (value) {
                        setState(() {
                          _selectedPaymentMethod = value;
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                    RadioListTile<String>(
                      title: const CustomText(
                        text: 'Company representative for collection',
                        color: Colors.blue,
                      ),
                      value: 'company_representative',
                      groupValue: _selectedPaymentMethod,
                      onChanged: (value) {
                        setState(() {
                          _selectedPaymentMethod = value;
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                    RadioListTile<String>(
                      title: const CustomText(
                        text: 'Credit card',
                        color: Colors.blue,
                      ),
                      value: 'credit_card',
                      groupValue: _selectedPaymentMethod,
                      onChanged: (value) {
                        setState(() {
                          _selectedPaymentMethod = value;
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          width: 400,
          decoration: const BoxDecoration(color: Color(0xffEDF1F5)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CustomText(
                  text: _selectedPaymentMethod ?? '  ',
                  color: Colors.blue,
                ),
                const Spacer(),
                const Icon(Icons.arrow_drop_down)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// GestureDetector(onTap: () {
//       showModalBottomSheet(
//           context: context,
//           builder: (context) => Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   ListTile(
//                     title: Text('Payment Methods'),
//                   ),
//                   RadioListTile<String>(
//                     title: Text('Visit the company headquarters'),
//                     value: 'visit_headquarters',
//                     groupValue: _selectedPaymentMethod,
//                     onChanged: (value) {
//                       setState(() {
//                         _selectedPaymentMethod = value;
//                       });
//                       Navigator.of(context).pop();
//                     },
//                   ),
//                   RadioListTile<String>(
//                     title: Text('Company representative for collection'),
//                     value: 'company_representative',
//                     groupValue: _selectedPaymentMethod,
//                     onChanged: (value) {
//                       setState(() {
//                         _selectedPaymentMethod = value;
//                       });
//                       Navigator.of(context).pop();
//                     },
//                   ),
//                   RadioListTile<String>(
//                     title: const Text('Credit card'),
//                     value: 'credit_card',
//                     groupValue: _selectedPaymentMethod,
//                     onChanged: (value) {
//                       setState(() {
//                         _selectedPaymentMethod = value;
//                       });
//                       Navigator.of(context).pop();
//                     },
//                   ),
//                 ],
//               ));
//     });