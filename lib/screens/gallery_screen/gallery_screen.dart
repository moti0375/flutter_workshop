import 'package:flutter/material.dart';
import 'package:flutter_workshop/ui/custom_elevated_button.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  List<String> _images = [
    "https://image.tmdb.org/t/p/w500/xvx4Yhf0DVH8G4LzNISpMfFBDy2.jpg",
    "https://image.tmdb.org/t/p/w500/svIDTNUoajS8dLEo7EosxvyAsgJ.jpg",
    "https://image.tmdb.org/t/p/w500/iiZZdoQBEYBv6id8su7ImL0oCbD.jpg"
  ];

  int _index = 0;

  void _handleNext() {
    setState(() {
      _index++;
    });
  }

  void _handlePrevious() {
    setState(() {
      _index--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery Screen"),
      ),
      body: SafeArea(
        bottom: true,
        child: Container(
          padding: EdgeInsets.all(8),
          child: _buildContent(),
        ),
      ),
    );
  }

  Column _buildContent() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                               BoxShadow(
                                 color: Colors.black38,
                                 offset: Offset(4.0, 4.0),
                                 blurRadius: 10.0,
                                 spreadRadius: 0.4,
                               ),
                             ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.network(
                _images[_index],
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: _buildPageButton(
                  title: "Previous",
                  onPressed: _index > 0 ? _handlePrevious : null,
                ),
              ),
              Expanded(
                child: _buildPageButton(
                  title: "Next",
                  onPressed: _index < (_images.length - 1) ? _handleNext : null,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildPageButton({required String title, Function()? onPressed}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: CustomElevatedButton(onPressed: onPressed, child: Text(title)),
    );
  }
}
