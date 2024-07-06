import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:traveller_station/cubit/auth_cubit/auth_cubit.dart';
import 'package:traveller_station/cubit/auth_cubit/auth_states.dart';
import 'package:traveller_station/pages/Auth_page/login_page/login_page.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/custombutton.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';
import 'package:traveller_station/utilites/widgets/customtextformfield.dart';

class SignUpBody extends StatelessWidget {
  //final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phonenumberController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  final FocusNode field1 = FocusNode();
  final FocusNode field2 = FocusNode();
  final FocusNode field3 = FocusNode();
  final FocusNode field4 = FocusNode();

  SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      text: 'Create Account',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const CustomText(
                      text: 'Create an account to find your dream Trip',
                      color: Colors.grey,
                      fontSize: 17,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextFormField(
                      hintText: 'User Name',
                      perfixicon: Icons.person_3_outlined,
                      controller: _usernameController,
                      keyboardType: TextInputType.emailAddress,
                      focusnode: field1,
                      onsubmitted: (value) {
                        FocusScope.of(context).requestFocus(field2);
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your user name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // CustomTextFormField(
                    //   hintText: 'Email Address',
                    //   perfixicon: Icons.email_outlined,
                    //   controller: _emailController,
                    //   keyboardType: TextInputType.emailAddress,
                    //   focusnode: field2,
                    //   onsubmitted: (value) {
                    //     FocusScope.of(context).requestFocus(field3);
                    //   },
                    //   validator: (value) {
                    //     if (value!.isEmpty) {
                    //       return 'please enter your email';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    // const SizedBox(
                    //   height: 15,
                    // ),
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
                              controller: _phonenumberController,
                              keyboardType: TextInputType.phone,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'please enter your phonenumber';
                                }
                                return null;
                              },
                              hintText: ' phone number',
                              hinnntcolr: Colors.grey,
                              focusnode: field3,
                              onsubmitted: (value) {
                                FocusScope.of(context).requestFocus(field4);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextFormField(
                      hintText: 'password',
                      suffixicon: AuthCubit.get(context).sufficxicpc,
                      suffixpressed: () {
                        AuthCubit.get(context)
                            .changeSecureRegisterPasswordconfig();
                      },
                      controller: _passwordController,
                      obscureText: AuthCubit.get(context).isSecurepc,
                      keyboardType: TextInputType.visiblePassword,
                      focusnode: field4,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    Row(
                      children: [
                        const CustomText(
                          text: 'Already have an account?    ',
                          color: Colors.grey,
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
                    const SizedBox(
                      height: 15,
                    ),
                    CustomButton(
                      buttonText: 'Create Account',
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {}
                      },
                      buttonColor: Colors.blue,
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
