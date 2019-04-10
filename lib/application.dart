import 'package:flutter/material.dart';
import 'package:flutter_workshop/pages/home_page/home_page.dart';



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter workshop",
      home: HomePage(),
    );
  }
}
