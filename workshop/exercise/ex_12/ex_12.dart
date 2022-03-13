/**
 * Theme and Dark Mode
 *
 * Flutter has a build in Themeing framework which allows us to style our app it a modular way!
 * In addition, it also has support for Dark mode.
 *
 * In this chapter we will set our app theme both for light and dark mode
 * and set buttons default shape and corners
 * */

//TODO 1 - Open application.dart file, reminder, in this file we set our app root Widget, the MaterialApp
///        This widget has planty of properties which effect the entire app,
///        We will use the MaterialApp properties to give themes to our app.
//TODO 2 - In the MaterialApp constructor, add theme: property, the theme property receives ThemeData object which contains
///        may theme properties such as colorScheme, textTheme and more.
//TODO 3 - Set the theme: property as follow ThemeData.from(colorScheme: ColorScheme.light(primary: Colors.white, onPrimary: Colors.black))
//TODO 4 - Lets add some more styling by using the copyWith pattern in the end of the ThemeData.from()
//TODO 5 - Set appBar elevation to 0 with AppBarTheme
/// ThemeData.from().copyWith(appBarTheme: AppBarTheme(elevation: 0))
//TODO 6 - Set TextTheme
/// ThemeData.from().copyWith(appBarTheme: ...
///                           textTheme: TextTheme(button: TextStyle(fontSize: 25), headline6: TextStyle(fontSize: 22)))
//TODO 7 - Set ElevatedButtonTheme
///
/// ThemeData.from().copyWith(appBarTheme: ...
///                           textTheme: TextTheme(button: TextStyle(fontSize: 25), headline6: TextStyle(fontSize: 22)),
///                           elevatedButtonTheme: ElevatedButtonThemeData(
///                           style: ElevatedButton.styleFrom(
///                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
///                           primary: Colors.lightBlue,
///                           onPrimary: Colors.white,
///                         ),
///                        ),
///                       )
///
//TODO 8 - Final Theme.data for light:
/// theme: ThemeData.from(colorScheme: ColorScheme.light(primary: Colors.white, onPrimary: Colors.black)).copyWith(appBarTheme: ...
///                           textTheme: TextTheme(button: TextStyle(fontSize: 25), headline6: TextStyle(fontSize: 22)),
///                           elevatedButtonTheme: ElevatedButtonThemeData(
///                           style: ElevatedButton.styleFrom(
///                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
///                           primary: Colors.lightBlue,
///                           onPrimary: Colors.white,
///                         ),
///                        ),
///                       )
//TODO 9 - Above the theme: property, add darkTheme: property
///   darkTheme:
///   theme: ThemeData.from...
//TODO 10 - Repeat steps 5 - 8 for the darkTheme, at the end you should have the following configuration for the dark mode:
///  darkTheme: ThemeData.from(colorScheme: ColorScheme.dark(onPrimary: Colors.white)).copyWith(
///        appBarTheme: AppBarTheme(elevation: 0),
///        textTheme: TextTheme(button: TextStyle(fontSize: 25), headline6: TextStyle(fontSize: 22)),
///        elevatedButtonTheme: ElevatedButtonThemeData(
///            style: ElevatedButton.styleFrom(
///                 shape: RoundedRectangleBorder(
///                 borderRadius: BorderRadius.all(Radius.circular(40)),
///               ),
///            )),
///         );
///
/**
 *  Extract the theme to methods
 * */

//TODO 11 - Click on the light theme content ThemeData.from(colorScheme: ColorScheme.light...
//TODO 12 - Press and hold Option while click the up arrow on the keyboard, this will start to mark the ThemeData content
//TODO 13 - Press Option+Cmd+M, this will open the extract method dialog
//TODO 14 - Set method name to _buildLightTheme and press Enter
//TODO 15 - Repeat steps 11 - 14 for darkTheme property, name the method _buildDarkTheme
//TODO 16 - At the end your MaterialApp should look as follow:
/// MaterialApp(
///       title: "Flutter Workshop",
///       theme: _buildLightTheme(),
///       darkTheme: _buildDarkTheme(),
///       home: HomeScreen(),
///     );

/**
 *  Remove the shape attribute from the CustomElevatedButton
 *  Remember that we set the buttons rounded corners from the CustomElevatedButton, but this is no
 *  longer required as we are now gives the buttons stying from the app theme.
 *  That's why we should remove the styling from the class itself
 *
 * */

//TODO 17 - Open the CustomElevatedButton class
//TODO 18 - Remove the style property
/// ElevatedButton(
///         child: loading ? CircularProgressIndicator() : this.child,
///         onPressed: ...
///         )
//TODO 19 - Do Hot reload, checkout the buttons, appBar and text stying
//TODO 20 - From the device settings, switch to dark mode and watch how app look changed with dark theme