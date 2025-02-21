import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:testflutter/azkar_app/about_screen.dart';

import 'azkar_home.dart';
import 'launch_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/launch_screen': (context) => LaunchScreen(),
        '/home_screen': (context) => AzkarHome(),
        '/about_screen': (context) => AboutScreen(),
      },
      initialRoute: '/launch_screen',
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
