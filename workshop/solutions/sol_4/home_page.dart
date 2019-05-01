import 'package:flutter/material.dart';

import '../sol_5/image_page/images_page.dart';

class HomePage extends StatelessWidget {
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
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                textColor: Theme.of(context).primaryTextTheme.button.color,
                onPressed: () {
                  print("Button Pressed");
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        ImagesPage();
                      },
                    ),
                  );
                },
                child: Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
