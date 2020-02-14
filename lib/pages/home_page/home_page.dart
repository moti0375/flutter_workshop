import 'package:flutter/material.dart';
import 'package:flutter_workshop/pages/gallery_page/gallery_page.dart';
import 'package:flutter_workshop/ui/custom_raised_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    print("HomePage: build");
    return Scaffold(
      body: Center(
        child: Container(
          height: 50,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: CustomRaisedButton(
            child: Text(
              "Login",
              style: TextStyle(fontSize: 25),
            ),
            onPressed: () => _login(context),
            isLoading: _isLoading,
          ),
        ),
      ),
    );
  }

  void _navigateToGalleryPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return GalleryPage();
        },
      ),
    );
  }

  void _login(BuildContext context){
    setState(() {
      _isLoading = true;
    });
    Future.delayed(Duration(milliseconds: 5000), (){
      _navigateToGalleryPage(context);
      setState(() {
        _isLoading = false;
      });
    });
  }
}
