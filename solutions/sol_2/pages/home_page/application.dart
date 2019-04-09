import 'package:flutter/material.dart';

import '../../../sol_5/image_page/images_page.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter workshop",
      home: ImagesPage(),
    );
  }
}
