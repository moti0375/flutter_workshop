import 'package:flutter/material.dart';
import 'package:flutter_workshop/screens/gallery_screen/gallery_screen.dart';
import 'package:flutter_workshop/ui/custom_elevated_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Workshop"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomElevatedButton(
                title: "Login",
                onPressed: (){
                  print("Button Pressed");
                  Navigator.of(context).push( MaterialPageRoute(builder: (context) => GalleryScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
