/**
 *    Images Page - StatefulWidget
 */

//TODO 1. Under screens directory/package, create new gallery_screen directory
//TODO 2. In the new gallery_screen directory, create new gallery_screen.dart file
//TODO 3. In the new file create ImagesPage class,
//TODO 4. Make the class extends StatefulWidget
//TODO 5. Override the createState method.
//TODO 6. In the gallery_screen.dart, create another class GalleryPageState, extends State<GalleryScreen>
//TODO 7. In new class, override the build method

///  TIP: when dart file is empty, type 'stful' + enter, IDE will generate a
///  StatefulWidget and a State template. Fill the class name and do imports as necessary.
///

//TODO 8. In the State class, replace the Container() with a Scaffold() widget.
//TODO 9. Add an AppBar with a title: "Gallery Screen" (checkout Ex_3 for reminder)
//TODO 10. Add a body, with a Container() widget
//TODO 11. Expand the Container constructor, add padding:
///    body: Container(
///    padding: const EdgeInsets.all(8.0), ...
//TODO 12. Next, set the Container child to Column()
//TODO 13. Set the Column attributes to:
///      child: Column(
///        mainAxisSize: MainAxisSize.max,
///        mainAxisAlignment: MainAxisAlignment.center,
///        crossAxisAlignment: CrossAxisAlignment.stretched,
///        ....
//TODO 14. Add children empty array to the Column
///    The Scaffold now should look like this:
///    Container(
///       padding: const EdgeInsets.all(8.0),
///       child: Column(
///           mainAxisSize: MainAxisSize.max,
///           mainAxisAlignment: MainAxisAlignment.center,
///           crossAxisAlignment: CrossAxisAlignment.center,
///           children: [
///
///            ],
///         ),
///       ),
///    );


/**
 * Lets use the Flutter Navigator to open the new GalleryScreen
 */

//TODO  15. In the home_screen.dart file, go to the Login ElevatedButton
//TODO  16. In the onPressed: (){}, call the Flutter Navigator to open the GalleryScreen
///     Navigator.of(context).push( MaterialPageRoute(builder: (context) => GalleryScreen()))
//TODO 17. Q: What does Navigator.of(context) means?
//TODO 18: A: Flutter Navigator is actually a Widget! or more precisely, an InheritedWidget, when using the of(context) method, we ask the framework to go up
//TODO        in the WidgetTree from the current Widget and find the nearest ancestor Widget of type Navigator
//TODO        The Navigator Widget is created for us when we use the MaterialApp Widget and placed as an ancestor for all Widgets down
//TODO        the WidgetTree.
//TODO        To learn more about Flutter WidgetTree and InheritedWidget concepts, checkout for the documentation: https://api.flutter.dev/flutter/widgets/InheritedWidget-class.html
///*********************
///    onPressed: () {
///       print("Button Pressed");
///       Navigator.of(context).push( MaterialPageRoute(builder: (context) => GalleryScreen()));
///    }
//TODO  17. Import the GalleryScreen(), use Alt+Enter
//TODO  18. Do hot reload
//TODO  19. Press the login button, the Gallery screen should be opened with white screen.


