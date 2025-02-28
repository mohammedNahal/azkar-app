import 'package:flutter/material.dart';
import 'package:testflutter/auth_screen/login_screen.dart';

class RunAuth extends StatelessWidget {
  const RunAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'JosefinSans', useMaterial3: false),
      routes: {'/login_screen': (context) => LoginScreen()},
      initialRoute: '/login_screen',
    );
  }
}
