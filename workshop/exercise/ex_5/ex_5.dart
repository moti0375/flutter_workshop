/**
 *              Images Page - StatefulWidget
 */

//TODO 1. Under pages package, create new dart file: images_page.dart
//TODO 2. In the new file create ImagesPage class,
//TODO 3. Make the class extends StatefulWidget
//TODO 4. Override the createState method.
//TODO 5. In the images_page.dart, create another class ImagesPageState, extends State<ImagesPage>
//TODO 6. In new class, override the build method

///  TIP: when dart file is empty, type 'stful' + enter, IDE will generate a
/// StatefulWidget and a State template. Fill the class name and do imports as necessary.
///

//TODO 7. In the State class, replace the Container() with a Scaffold() widget.
//TODO 8. Add an AppBar with a title: "Images page" (checkout Ex_3 for reminder)
//TODO 9. Add a body, with a Container() widget
//TODO 10. Expand the Container constructor, add padding:
///    body: Container(
///    padding: const EdgeInsets.all(8.0), ...
//TODO 11. Next, set the Container child to Column()
//TODO 12. Set the Column attributes to:
///      child: Column(
///        mainAxisSize: MainAxisSize.max,
///        mainAxisAlignment: MainAxisAlignment.center,
///        crossAxisAlignment: CrossAxisAlignment.center ...
//TODO 13. Add children empty array to the Column
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

//TODO  14. In the home_page.dart file, go to the Login RaisedButton
//TODO  15. In the onPressed: (){}, call the Flutter Navigator to open the ImagesPage
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
//TODO  16. Import the ImagesPage(), use Alt+Enter
//TODO  17. Do hot reload
//TODO  18. Press the login button, the images page should be opened with white screen.


