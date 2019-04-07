import 'package:flutter/material.dart';
import 'package:flutter_workshop/solutions/sol_8/images_page.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter workshop",
      home: ImagesPage(),
    );
  }
}
