import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveller_station/cubit/auth_cubit/auth_cubit.dart';
import 'package:traveller_station/cubit/auth_cubit/auth_states.dart';
import 'package:traveller_station/pages/Auth_page/create_new_password_page/widggets/success_creation_pass.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/custombutton.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';
import 'package:traveller_station/utilites/widgets/customtextformfield.dart';

class CreateNewPasswordBody extends StatelessWidget {
  CreateNewPasswordBody({super.key});
  final TextEditingController _confirmPasswordcontroller =
      TextEditingController();
  final _formkey = GlobalKey<FormState>();

  final TextEditingController _passwordController = TextEditingController();
  final FocusNode field1 = FocusNode();
  final FocusNode field2 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: 'Create New Password ',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 12,
                ),
                const CustomText(
                    text:
                        'Your new password must be different from previous used password'),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFormField(
                  controller: _passwordController,
                  suffixicon: AuthCubit.get(context).sufficxiconcreatepass,
                  suffixpressed: () {
                    AuthCubit.get(context).changeSecurecreatePassword();
                  },
                  obscureText: AuthCubit.get(context).isSecurecreatepass,
                  validator: (password) {
                    if (password!.isEmpty) {
                      return 'please enter the password';
                    }
                    return null;
                  },
                  focusnode: field1,
                  hintText: ' Password',
                  hinnntcolr: Colors.grey,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFormField(
                  controller: _confirmPasswordcontroller,
                  suffixicon:
                      AuthCubit.get(context).sufficxiconconfirmcreatepass,
                  suffixpressed: () {
                    AuthCubit.get(context).changeSecureconfirmcreatePassword();
                  },
                  obscureText: AuthCubit.get(context).isSecureconfirmcreatepass,
                  validator: (password) {
                    if (password!.isEmpty) {
                      return 'please re enter the password to confirm';
                    } else if (password != _passwordController.text) {
                      return ' confirm password is differnt ';
                    }
                    return null;
                  },
                  focusnode: field2,
                  hintText: 'confirm Password',
                  hinnntcolr: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomButton(
                    buttonText: 'Create New Password',
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        context.push(const SuccessCreationPaaword());
                      }
                    },
                    buttonColor: Colors.blue,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
