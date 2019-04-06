import 'package:flutter/material.dart';

class ImagesPage extends StatefulWidget {
  @override
  _ImagesPageState createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(
              "https://image.tmdb.org/t/p/w500/kqjL17yufvn9OVLyXYpvtyrFfak.jpg",
              fit: BoxFit.fill,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "Image: ",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black26),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: RaisedButton(
                      child: Text("Next"),
                      color: Theme.of(context).primaryColor,
                      onPressed: (){

                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: RaisedButton(
                      child: Text("Previous"),
                      color: Theme.of(context).primaryColor,
                      onPressed: (){

                      },
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
