import 'package:flutter/material.dart';
import 'package:flutter_workshop/screens/home_screen/home_screen.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Workshop",
      home: HomeScreen(),
    );
  }

}