import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:traveller_station/pages/Auth_page/login_page/login_page.dart';
import 'package:traveller_station/pages/Auth_page/verification_code/verification_code.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/custombutton.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';
import 'package:traveller_station/utilites/widgets/customtextformfield.dart';

class ResetPasswordBody extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  //final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phonenumber = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  final FocusNode field1 = FocusNode();
  final FocusNode field2 = FocusNode();
  ResetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              text: 'Reset Password',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomText(
              text:
                  'Please enter your phone number to request a password reset ',
              color: Colors.grey,
              fontSize: 15,
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomText(
              text: 'Phone Number  ',
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          height: 75,
                          width: 120,
                          child: const IntlPhoneField(
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(),
                              ),
                            ),
                            //keyboardType: TextInputType.phone,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 70,
                    child: CustomTextFormField(
                      controller: _phonenumber,
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your phonenumber';
                        }
                        return null;
                      },
                      hintText: ' phone number',
                      hinnntcolr: Colors.grey,
                      focusnode: field1,
                      onsubmitted: (value) {
                        FocusScope.of(context).requestFocus(field2);
                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomButton(
                buttonText: 'Send Code',
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    context.push(VerificationCodePage());
                  }
                },
                buttonColor: Colors.blue,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              children: [
                const CustomText(
                  text: 'Remember Your Password?    ',
                  color: Colors.blue,
                ),
                InkWell(
                  onTap: () {
                    context.push(const LoginPage());
                  },
                  child: const CustomText(
                    text: 'Login ',
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
