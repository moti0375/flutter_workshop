/**
 *    Images Page - StatefulWidget
 */

//TODO 1. Under screens directory/package, create new gallery_screen directory
//TODO 2. In the new gallery_screen directory, create new gallery_screen.dart file
//TODO 3. In the new file create ImagesPage class,
//TODO 4. Make the class extends StatefulWidget
//TODO 5. Override the createState method.
//TODO 6. In the images_page.dart, create another class ImagesPageState, extends State<ImagesPage>
//TODO 7. In new class, override the build method

///  TIP: when dart file is empty, type 'stful' + enter, IDE will generate a
///  StatefulWidget and a State template. Fill the class name and do imports as necessary.
///

//TODO 8. In the State class, replace the Container() with a Scaffold() widget.
//TODO 9. Add an AppBar with a title: "Images page" (checkout Ex_3 for reminder)
//TODO 10. Add a body, with a Container() widget
//TODO 11. Expand the Container constructor, add padding:
///    body: Container(
///    padding: const EdgeInsets.all(8.0), ...
//TODO 12. Next, set the Container child to Column()
//TODO 13. Set the Column attributes to:
///      child: Column(
///        mainAxisSize: MainAxisSize.max,
///        mainAxisAlignment: MainAxisAlignment.center,
///        crossAxisAlignment: CrossAxisAlignment.center ...
//TODO 14. Add children empty array to the Column
///    The Scaffold now should look like this:
///    Container(
///       padding: const EdgeInsets.all(8.0),
///       child: Column(
///           mainAxisSize: MainAxisSize.max,
///           mainAxisAlignment: MainAxisAlignment.center,
///           crossAxisAlignment: CrossAxisAlignment.center,
///           children: <Widget>[
///
///            ],
///         ),
///       ),
///    );


/**
 * Lets use the Flutter Navigator to open the new ImagesPage
 */

//TODO  15. In the home_page.dart file, go to the Login RaisedButton
//TODO  16. In the onPressed: (){}, call the Flutter Navigator to open the ImagesPage
///    Navigator.of(context).push(context, MaterialPageRoute(
///       builder: (context){ new ImagesPage() }
///    ))
///*********************
///    onPressed: () {
///    print("Button Pressed");
///    Navigator.push(MaterialPageRoute( builder: (context) {
///         return ImagesPage();
///        },
///       ),
///     );
///    }
//TODO  17. Import the ImagesPage(), use Alt+Enter
//TODO  18. Do hot reload
//TODO  19. Press the login button, the images page should be opened with white screen.


