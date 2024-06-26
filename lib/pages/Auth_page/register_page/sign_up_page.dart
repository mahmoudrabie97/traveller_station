import 'package:flutter/material.dart';
import 'package:traveller_station/pages/Auth_page/register_page/widgets/sign_up_body.dart';

class SignUPPage extends StatelessWidget {
  const SignUPPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(child: SignUpBody()),
    );
  }
}
