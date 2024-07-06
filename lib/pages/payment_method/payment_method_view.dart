import 'package:flutter/material.dart';
import 'package:traveller_station/pages/payment_method/widgets/payment_methods_item.dart';

class PaymentMethodView extends StatelessWidget {
  const PaymentMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        AppBar(
          title: Text('Payment Methods'),
          centerTitle: true,
        ),
        PaymentMethodsItems()
      ],
    ));
  }
}
