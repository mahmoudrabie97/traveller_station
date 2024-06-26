import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:traveller_station/pages/Auth_page/create_new_password_page/create_new_password.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/custombutton.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';
import 'package:traveller_station/utilites/widgets/customtextformfield.dart';

class VerificationBody extends StatelessWidget {
  const VerificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: 'Verification Code',
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 12,
          ),
          const CustomText(
              text: 'We have send vertification code to your number '),
          const SizedBox(
            height: 12,
          ),
          Form(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 68,
                width: 64,
                child: TextFormField(
                  style: Theme.of(context).textTheme.headline6,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              SizedBox(
                height: 68,
                width: 64,
                child: TextFormField(
                  style: Theme.of(context).textTheme.headline6,
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              SizedBox(
                height: 68,
                width: 64,
                child: TextFormField(
                  style: Theme.of(context).textTheme.headline6,
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              SizedBox(
                height: 68,
                width: 64,
                child: TextFormField(
                  style: Theme.of(context).textTheme.headline6,
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
            ],
          )),
          const SizedBox(
            height: 13,
          ),
          CustomButton(
            buttonText: 'Verify',
            onPressed: () {
              context.push(CreateNewPasswordPage());
            },
            buttonColor: Colors.blue,
          ),
          const SizedBox(
            height: 25,
          ),
          const Row(
            children: [
              CustomText(text: 'Resend code'),
              Spacer(),
              CustomText(
                text: 'Resend',
                color: Colors.blue,
              )
            ],
          )
        ],
      ),
    ));
  }
}
