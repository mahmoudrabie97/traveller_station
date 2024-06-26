import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:traveller_station/pages/Auth_page/login_page/login_page.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class SuccessCreationPaaword extends StatelessWidget {
  const SuccessCreationPaaword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.key,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const CustomText(
            text: 'Success',
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 8,
          ),
          const CustomText(text: 'Your password has been successfully reset'),
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: () {
              context.push(LoginPage());
            },
            child: const CustomText(
              text: 'Back to Login',
              color: Colors.blue,
              fontSize: 17,
            ),
          )
        ],
      ))),
    );
  }
}
