import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:testflutter/azkar_app/about_screen.dart';
import 'package:testflutter/azkar_app/out_boarding_screen.dart';

import 'auth/login_screen.dart';
import 'azkar_home.dart';
import 'launch_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => LaunchScreen(),
        '/login_screen': (context) => LoginScreen(),
        '/home_screen': (context) => AzkarHome(),
        '/about_screen': (context) => AboutScreen(),
        '/outBoarding_screen': (context) => OutBoardingScreen(),
      },

      title: 'Azkar App',
      theme: ThemeData(useMaterial3: false, fontFamily: 'JosefinSans'),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'),
        // Locale('en'),
      ],
      // locale: Locale('ar'),
    );
  }
}
