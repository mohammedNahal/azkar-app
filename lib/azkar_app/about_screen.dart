import 'package:flutter/material.dart';
import 'package:testflutter/prefs/shared_pref_controller.dart';

class AboutScreen extends StatelessWidget {
  // String _message = 'عن التطبيق';
  final String _email = SharedPrefController().theEmail ?? 'لا يوجد ايميل';
  AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ModalRoute? route = ModalRoute.of(context);
    // if (route != null) {
    //   Map<String, dynamic> arguments =
    //       route.settings.arguments as Map<String, dynamic>;
    //   if (arguments.containsKey('message')) {
    //     _message = arguments['message'];
    //   }
    // }
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('عن التطبيق'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Text(
          _email,
          // _message,
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
