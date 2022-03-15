import 'package:flutter/material.dart';
import 'package:flutter_workshop/screens/gallery_screen/gallery_store.dart';
import 'package:flutter_workshop/screens/home_screen/home_screen.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<GalleryStore>(create: (_) => GalleryStore(),)
      ],
      child: MaterialApp(
        title: "Flutter Workshop",
        darkTheme: _buildDarkTheme(),
        theme: _buildLightTheme(),
        home: HomeScreen(),
      ),
    );
  }

  ThemeData _buildLightTheme() {
    return ThemeData.from(
      colorScheme: ColorScheme.light(primary: Colors.white, onPrimary: Colors.black),
    ).copyWith(
      appBarTheme: AppBarTheme(elevation: 0),
      textTheme: TextTheme(
        headline6: TextStyle(fontSize: 22),
        button: TextStyle(fontSize: 25),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: Colors.lightBlue,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
        ),
      ),
    );
  }

  ThemeData _buildDarkTheme() {
    return ThemeData.from(colorScheme: ColorScheme.dark(onPrimary: Colors.white)).copyWith(
        appBarTheme: AppBarTheme(elevation: 0),
        textTheme: TextTheme(button: TextStyle(fontSize: 25), headline6: TextStyle(fontSize: 22)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
          ),
        ));
  }
}
