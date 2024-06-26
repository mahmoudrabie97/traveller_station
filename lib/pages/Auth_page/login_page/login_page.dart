import 'package:flutter/material.dart';
import 'package:traveller_station/pages/Auth_page/login_page/widgets/login_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: LoginBody()),
    );
  }
}
