import 'package:flutter/material.dart';
import 'package:shreyanshadminportal/responsive%20needs/uichoice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
// The 'home' property defines the default route or starting screen of the app.
      home: uichoice()
      );

  }
}
