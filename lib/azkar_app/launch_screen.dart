import 'package:flutter/material.dart';

import '../prefs/shared_pref_controller.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('IS Login? ${SharedPrefController().isLoggedIn}');
    String route = SharedPrefController().isLoggedIn ? '/home_screen' : '/outBoarding_screen';
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepOrange.shade900,
              Colors.deepOrange.shade500,
              Colors.deepOrangeAccent,
              Colors.deepOrange.shade100,
            ],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
          ),
        ),
        child: Text(
          "مسبحة الأذكار",
          style: TextStyle(
            color: Colors.deepOrange.shade100,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}