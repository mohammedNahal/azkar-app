/// This Class is Help Unit Tester When Test Application.
/// We Use Tow Text Editing Controller [Email]&[Password] BY Default.
/// When Use This Class We Editing Number and Name Text Editing Controller.
library;

import 'package:flutter/cupertino.dart';

abstract class SingleResponsibility {

  void performLogin();
  // {
  //   if (checkData(emailController, passwordController)) {
  //     return login();
  //   }
  // }

  bool checkData();
  // {
  //   if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
  //     checkErrors();
  //     return true;
  //   }
  //   checkErrors();
  //   return false;
  // }

  void checkErrors();
//   {
//   _emailErrorText =
//   _emailController.text.isEmpty ? 'E-mail Address is required' : null;
//   _passwordErrorText =
//   _passwordController.text.isEmpty ? 'Password is required' : null;
// }

  void login();
//   {
//     do anything
// }
}
