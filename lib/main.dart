import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project 1',
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xFF041c81,
          <int, Color>{
            50: Color(0xFF041c81),
            100: Color(0xFF041c81),
            200: Color(0xFF041c81),
            300: Color(0xFF041c81),
            400: Color(0xFF041c81),
            500: Color(0xFF041c81),
            600: Color(0xFF041c81),
            700: Color(0xFF041c81),
            800: Color(0xFF041c81),
            900: Color(0xFF041c81),
          },
        ),
      ),
      home: Home(),
    );
  }
}
