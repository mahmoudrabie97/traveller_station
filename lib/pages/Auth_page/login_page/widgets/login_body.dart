import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveller_station/cubit/auth_cubit/auth_cubit.dart';
import 'package:traveller_station/cubit/auth_cubit/auth_states.dart';
import 'package:traveller_station/generated/l10n.dart';
import 'package:traveller_station/pages/Auth_page/register_page/sign_up_page.dart';
import 'package:traveller_station/pages/Auth_page/reset_password_page/reset_password.dart';
import 'package:traveller_station/pages/welcome_screen/welcome_page.dart';
import 'package:traveller_station/root_page.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/custombutton.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';
import 'package:traveller_station/utilites/widgets/customtextformfield.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginBody extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  //final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phonenumber = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  final FocusNode field1 = FocusNode();
  final FocusNode field2 = FocusNode();

  LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: S.of(context).logintitle,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomText(text: S.of(context).phonenum),
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
                                child: IntlPhoneField(
                                  decoration: InputDecoration(
                                    labelText: S.of(context).phonenum,
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
                                return 'please enter your phone';
                              }
                              return null;
                            },
                            hintText: S.of(context).phonenum,
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
                  const SizedBox(
                    height: 15,
                  ),
                  CustomText(text: S.of(context).password),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFormField(
                    controller: _passwordController,
                    suffixicon: AuthCubit.get(context).sufficxicp,
                    suffixpressed: () {
                      AuthCubit.get(context).changeSecureLoginPassword();
                    },
                    obscureText: AuthCubit.get(context).isSecurep,
                    validator: (password) {
                      if (password!.isEmpty) {
                        return 'please enter the password';
                      }
                      return null;
                    },
                    focusnode: field2,
                    hintText: S.of(context).password,
                    hinnntcolr: Colors.grey,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          context.push(const ResetPassword());
                        },
                        child: CustomText(
                          text: S.of(context).forgotPass,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      CustomText(
                        text: S.of(context).Donthavescount,
                        color: Colors.blue,
                      ),
                      InkWell(
                        onTap: () {
                          context.push(const SignUPPage());
                        },
                        child: CustomText(
                          text: S.of(context).Signup,
                          color: Colors.blue,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    buttonText: S.of(context).login,
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        context.push(const WelcomPage());
                      }
                    },
                    buttonColor: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
