import 'package:flutter/material.dart';

class PaymentRowOptions extends StatefulWidget {
  const PaymentRowOptions({super.key});

  @override
  PaymentRowOptionsState createState() => PaymentRowOptionsState();
}

class PaymentRowOptionsState extends State<PaymentRowOptions> {
  String? _selectedPaymentOption = 'credit_card';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Credit Card
        Row(
          children: [
            Radio<String>(
              value: 'credit_card',
              groupValue: _selectedPaymentOption,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentOption = value;
                });
              },
            ),
            Text('Credit Card'),
          ],
        ),

        // PayPal
        Row(
          children: [
            Radio<String>(
              value: 'paypal',
              groupValue: _selectedPaymentOption,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentOption = value;
                });
              },
            ),
            Text('PayPal'),
          ],
        ),

        // Cash
        Row(
          children: [
            Radio<String>(
              value: 'cash',
              groupValue: _selectedPaymentOption,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentOption = value;
                });
              },
            ),
            Text('Cash'),
          ],
        ),
      ],
    );
  }
}
