import 'package:flutter/material.dart';
import 'package:flutter_workshop/screens/gallery_screen/gallery_screen.dart';
import 'package:flutter_workshop/ui/custom_elevated_button.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool _loading = false;

  void _setLoading(bool loading){
    setState(() {
      _loading = loading;
    });
  }

  void _login(){
    _setLoading(true);
    Future.delayed(Duration(seconds: 3), (){
      _setLoading(false);
      Navigator.of(context).push( MaterialPageRoute(builder: (context) => GalleryScreen()));
    });
  }

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
                loading: _loading,
                child: Text("Login"),
                onPressed: (){
                  print("Button Pressed");
                  _login();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
