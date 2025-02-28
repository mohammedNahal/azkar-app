import 'package:flutter/material.dart';
import 'package:testflutter/auth_screen/login_screen_text_form_field.dart';

import 'login_screen_text_field.dart';

class RunAuth extends StatelessWidget {
  const RunAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'JosefinSans', useMaterial3: false),
      routes: {
        '/login_screen_form': (context) => LoginScreenTextFormField(),
        '/login_screen_without_form': (context) => LoginScreenTextField(),
      },
      initialRoute: '/login_screen_without_form',
    );
  }
}
