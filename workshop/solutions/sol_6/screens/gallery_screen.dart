import 'package:flutter/material.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery Screen"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              "https://image.tmdb.org/t/p/w500/xvx4Yhf0DVH8G4LzNISpMfFBDy2.jpg",
              fit: BoxFit.fill,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: _buildPageButton(title: "Previous", onPressed: () {}),
                ),
                Expanded(
                  child: _buildPageButton(title: "Next", onPressed: () {}),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPageButton({required String title, Function()? onPressed}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: ElevatedButton(onPressed: onPressed, child: Text(title)),
    );
  }
}
