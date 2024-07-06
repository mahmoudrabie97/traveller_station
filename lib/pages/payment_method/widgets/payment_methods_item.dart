import 'package:flutter/material.dart';
import 'package:traveller_station/pages/payment_method/widgets/card_details.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/custombutton.dart';

class PaymentMethodsItems extends StatefulWidget {
  const PaymentMethodsItems({super.key});

  @override
  PaymentMethodsItemsState createState() => PaymentMethodsItemsState();
}

class PaymentMethodsItemsState extends State<PaymentMethodsItems> {
  String _selectedPaymentMethod = 'card';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Credit/Debit Card
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: RadioListTile(
              value: 'card',
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value!;
                });
              },
              title: const Text('Credit/Debit Card'),
              subtitle: const Text('VISA, Mastercard ,etc'),
            ),
          ),
          const SizedBox(height: 16.0),

          // PayPal
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: RadioListTile(
              value: 'paypal',
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value!;
                });
              },
              title: const Text('PayPal'),
              subtitle: const Text('Pay with your PayPal account'),
            ),
          ),
          const SizedBox(height: 16.0),

          // Bank Transfer
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: RadioListTile(
              value: 'bank',
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value!;
                });
              },
              title: const Text('Bank Transfer'),
              subtitle: const Text('Pay directly from your bank account'),
            ),
          ),
          const SizedBox(height: 16.0),
          CustomButton(
            buttonText: 'Containue',
            onPressed: () {
              context.push(CardDetails());
            },
            buttonColor: Colors.blue,
          )

          // Pay Button
        ],
      ),
    );
  }
}
