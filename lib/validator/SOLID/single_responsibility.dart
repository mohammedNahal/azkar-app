/// This Class is Help Unit Tester When Test Application.
/// We Use Tow Text Editing Controller [Email]&[Password] BY Default.
/// When Use This Class We Editing Number and Name Text Editing Controller.
library;

import 'package:flutter/cupertino.dart';

class SingleResponsibility {
  SingleResponsibility({
    required this.emailController,
    required this.passwordController,
    required this.emailErrorText,
    required this.passwordErrorText,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  String? emailErrorText;
  String? passwordErrorText;

  void performLogin() {
    if (checkData()) {
      return login();
    }
  }

  bool checkData() {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      checkErrors();
      return true;
    }
    checkErrors();
    return false;
  }

  void checkErrors() {
    emailErrorText =
        emailController.text.isEmpty ? 'E-mail Address is required' : null;
    passwordErrorText =
        passwordController.text.isEmpty ? 'Password is required' : null;
  }

  void login() {}
}
