import 'package:flutter/material.dart';

class ImagesPage extends StatefulWidget {
  @override
  _ImagesPageState createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  List<String> images = [
    "https://image.tmdb.org/t/p/w500/xvx4Yhf0DVH8G4LzNISpMfFBDy2.jpg",
    "https://image.tmdb.org/t/p/w500/svIDTNUoajS8dLEo7EosxvyAsgJ.jpg",
    "https://image.tmdb.org/t/p/w500/iiZZdoQBEYBv6id8su7ImL0oCbD.jpg"
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images page"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:_buildContent()
        ),
      ),
    );
  }

//  Padding _buildButton(
//      {BuildContext context, String title, Function() callback}) {
//    return Padding(
//      padding: const EdgeInsets.symmetric(horizontal: 4),
//      child: RaisedButton(
//        color: Theme.of(context).primaryColor,
//        textColor: Theme.of(context).primaryTextTheme.button.color,
//        child: Text(title),
//        onPressed: callback,
//      ),
//    );
//  }

  List<Widget> _buildContent() {
    return <Widget>[
      Image.network(
        images[index],
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
            child: _buildButton(
              "Previous",
              index > 0 ? () {
                      _handlePrevious();
                     } : null,
            ),
          ),
          Expanded(
            child: _buildButton(
             "Next",
              index < (images.length - 1)
                  ? () {
                      _handleNext();
                    }
                  : null,
            ),
          )
        ],
      )
    ];
  }

  Padding _buildButton(String title, Function()? callback) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ElevatedButton(
        child: Text(title),
        onPressed: callback,
      ),
    );
  }

  void _handleNext() {
    setState(() {
      index++;
    });
  }

  void _handlePrevious() {
    setState(() {
      index--;
    });
  }
}
