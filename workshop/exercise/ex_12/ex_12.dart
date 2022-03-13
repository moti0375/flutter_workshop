/**
 * Theme and Dark Mode
 *
 * Flutter has a built in Themeing framework which allows us to style our app it a modular way!
 * In addition, it also has support for Dark mode.
 *
 * In this chapter we will set our app theme both for light and dark mode
 * and set buttons default shape and corners and text default size across the app
 * */

//TODO 1 - Open application.dart file, reminder, in this file we created our app root Widget, the MaterialApp
///        This widget has plenty of properties which effect the entire app such as: orientation, navigation routes, themes and more.
///        We will use the MaterialApp properties to define themes to our app.
//TODO 2 - In the MaterialApp constructor, under the title: "Flutter Workshop", add theme: property, the theme property receives ThemeData object which contains
///        theme properties such as colorScheme, textTheme and more.
//TODO 3 - Set the theme: property as follow ThemeData.from(colorScheme: ColorScheme.light(primary: Colors.white, onPrimary: Colors.black))
//TODO 4 - Do Hot Reload, look how the appBar and Buttons color has changed
//TODO 5 - Lets add some more styling by using the copyWith pattern in the end of the ThemeData.from()
//TODO 5 - Set appBar elevation to 0 with AppBarTheme
/// ThemeData.from(colorScheme: ...).copyWith(appBarTheme: AppBarTheme(elevation: 0))
//TODO 7 - Set TextTheme, we want to set all buttons text to size of 25, and appBar text to 22 (appBar text is defined with headline6 theme attribute)
/// ThemeData.from(colorScheme: ...).copyWith(appBarTheme: ...
///                                          textTheme: TextTheme(button: TextStyle(fontSize: 25), headline6: TextStyle(fontSize: 22),),)
//TODO 8 - Set ElevatedButtonTheme, set primary color and onPrimary (which set the button text color) and also the button shape with rounded corners
///
/// ThemeData.from(colorScheme: ...).copyWith(appBarTheme: ...
///                           textTheme: TextTheme(button: TextStyle(fontSize: 25), headline6: TextStyle(fontSize: 22)),
///                           elevatedButtonTheme: ElevatedButtonThemeData(
///                                style: ElevatedButton.styleFrom(
///                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40)),),
///                                    primary: Colors.lightBlue,
///                                    onPrimary: Colors.white,
///                         ),
///                        ),
///                       )
///
//TODO 10 - Do hot reload, notice the buttons style changed..
/// Q: Why the button's rounded corners hasn't changed?
/// A: As you remember, we set the button style internally inside the CustomElevatedButton, this overrides the theme. We will fix shortly
///
//TODO 9 - Final Theme.data for light:
/// theme: ThemeData.from(colorScheme: ColorScheme.light(primary: Colors.white, onPrimary: Colors.black)).copyWith(appBarTheme: ...
///                           textTheme: TextTheme(button: TextStyle(fontSize: 25), headline6: TextStyle(fontSize: 22)),
///                           elevatedButtonTheme: ElevatedButtonThemeData(
///                                        style: ElevatedButton.styleFrom(
///                                                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
///                                        primary: Colors.lightBlue,
///                                        onPrimary: Colors.white,
///                                     ),
///                                   ),
///                                 )
//TODO 10 - Above the theme: property, add darkTheme: property
///   darkTheme:
///   theme: ThemeData.from...
//TODO 11 - Repeat steps 5 - 8 for the darkTheme, at the end you should have the following configuration:
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
///
/**
 *  Extract the theme to methods
 *  Lets create methods for providing the themes and use them in the MaterialApp
 * */

//TODO 12 - Click on the light theme content ThemeData.from(colorScheme: ColorScheme.light...
//TODO 13 - Press and hold Option while click the up arrow on the keyboard, this will start to mark the ThemeData content, mark the entire content of the ThemeData object
//TODO 14 - Press Option+Cmd+M, this will open the extract method dialog
//TODO 15 - Set method name to _buildLightTheme and press Enter
//TODO 16 - Repeat steps 11 - 14 for darkTheme property, name the method _buildDarkTheme
//TODO 17 - At the end your MaterialApp should look as follow:
/// MaterialApp(
///       title: "Flutter Workshop",
///       theme: _buildLightTheme(),
///       darkTheme: _buildDarkTheme(),
///       home: HomeScreen(),
///     );

/**
 *  Removing the style: attribute from the CustomElevatedButton
 *
 *  Remember that we set the buttons rounded corners from the CustomElevatedButton, but this is no
 *  longer required as we are now providing the buttons stying from the app theme.
 *  That's why we should remove the styling from the class itself, otherwise it will override the theme which comes from the App theme
 *
 * */

//TODO 18 - Open the CustomElevatedButton class
//TODO 19 - Remove the style property
/// ElevatedButton(
///         child: loading ? CircularProgressIndicator() : this.child,
///         onPressed: ...
///         )
//TODO 20 - Do Hot reload, checkout the buttons rounded corners
//TODO 21 - From the device settings, switch to dark mode and watch how app look changed with dark theme

