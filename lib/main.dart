import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Fitness',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff5b5282),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

