import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveller_station/cubit/auth_cubit/auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitialState());
  static AuthCubit get(context) => BlocProvider.of(context);

  IconData sufficxicp = Icons.visibility_off;
  IconData sufficxicpc = Icons.visibility_off;
  IconData sufficxiconcreatepass = Icons.visibility_off;
  IconData sufficxiconconfirmcreatepass = Icons.visibility_off;
  bool isSecurep = true;
  bool isSecurepc = true;
  bool isSecurecreatepass = true;
  bool isSecureconfirmcreatepass = true;
  String? language = 'english';

  bool showAnimation = false;

  void changeSecureLoginPassword() {
    if (isSecurep) {
      sufficxicp = Icons.visibility_off;
      isSecurep = false;
    } else {
      sufficxicp = Icons.remove_red_eye_outlined;
      isSecurep = true;
    }
    emit(ChangesecurepasswordState());
  }

  void changeSecureRegisterPasswordconfig() {
    if (isSecurepc) {
      sufficxicpc = Icons.visibility_off;
      isSecurepc = false;
    } else {
      sufficxicpc = Icons.remove_red_eye_outlined;
      isSecurepc = true;
    }
    emit(ChangesecurepasswordconfigState());
  }

  void changeSecurecreatePassword() {
    if (isSecurecreatepass) {
      sufficxiconcreatepass = Icons.visibility_off;
      isSecurecreatepass = false;
    } else {
      sufficxiconcreatepass = Icons.remove_red_eye_outlined;
      isSecurecreatepass = true;
    }
    emit(ChangesecureCreatepasswordState());
  }

  void changeSecureconfirmcreatePassword() {
    if (isSecureconfirmcreatepass) {
      sufficxiconconfirmcreatepass = Icons.visibility_off;
      isSecureconfirmcreatepass = false;
    } else {
      sufficxiconconfirmcreatepass = Icons.remove_red_eye_outlined;
      isSecureconfirmcreatepass = true;
    }
    emit((ChangesecurepassworConfirmState()));
  }

  void changeLanguaget(String? languagee) {
    language = languagee ?? '';
    emit(ChangeLangugeState());
  }
}
