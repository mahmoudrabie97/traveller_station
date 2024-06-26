import 'package:flutter/material.dart';
import 'package:traveller_station/pages/Auth_page/create_new_password_page/widggets/create_new_password_body.dart';

class CreateNewPasswordPage extends StatelessWidget {
  const CreateNewPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CreateNewPasswordBody(),
    );
  }
}
