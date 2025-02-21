import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  String _message = 'عن التطبيق';

  AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ModalRoute? route = ModalRoute.of(context);
    if (route != null) {
      Map<String, dynamic> arguments =
          route.settings.arguments as Map<String, dynamic>;
      if (arguments.containsKey('message')) {
        _message = arguments['message'];
      }
    }
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
          _message,
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
