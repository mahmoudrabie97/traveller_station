import 'package:flutter/material.dart';
import 'package:traveller_station/pages/Auth_page/verification_code/widgets/verification_body.dart';

class VerificationCodePage extends StatelessWidget {
  const VerificationCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: VerificationBody(),
    );
  }
}
