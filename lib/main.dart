import 'package:flutter/material.dart';
import 'package:testflutter/auth_screen/run_app.dart';
import 'package:testflutter/azkar_app/my_app.dart';
import 'package:testflutter/prefs/shared_pref_controller.dart';
// import 'azkar_app/my_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().initSharedPref();
  runApp(MyApp());
}
