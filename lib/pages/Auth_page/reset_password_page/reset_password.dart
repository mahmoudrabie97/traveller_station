import 'package:flutter/material.dart';
import 'package:traveller_station/pages/Auth_page/reset_password_page/widgets/reset_pass_body.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(child: ResetPasswordBody()),
    );
  }
}
