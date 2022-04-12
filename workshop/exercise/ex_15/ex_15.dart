/**
 *
 *  In the previous exercises we used Flutter Navigator to navigate between screens in the app.
    When did so, we created as-hoc routes and used the push()method for navigation.

    However, in a real world app, this solution may cause us code duplications and add boilerplate code anywhere we want to navigate.

    In addition, we might want to navigate to a destination screen from a few sources, this, again, will cause us to have code duplication and therefore our app will become harder to maintain.

    It will be much more efficient if we can define all routes in one place and then use them anywhere in our code, in a much more easy way.

    Flutter offers a rich in-app navigation solutions, including Navigator 2.0 which has already been introduced.


    Nevertheless, for this tutorial app, we can use the named routes api.
 * */

//TODO 1. Under the lib folder, create new app_routes.dart file
//TODO 2. In the new app_routes.dart file create 2 global routes constants
/// const HOME_SCREEN = './';
/// const GALLERY_SCREEN = '/gallery_screen';
//TODO 3. Open the application.dart file
//TODO 4. In the MaterialApp constructor, above the themes properties, add initialRoute: HOME_SCREEN
//TODO 5. Next, add routes: property
/// routes: {
///   INITIAL_ROUTE: (context) => HomeScreen(),
///   GALLERY_ROUTE: (context) => GalleryScreen()
/// }
//TODO 6. After we define the app routes, delete the home: property

/**
 *   Use pushNamed api to navigate GalleryScreen
 */

//TODO 7. In the home_screen.dart, replace the Navigator.of(context).push() with .pushNamed()
/// Navigator.pushNamed(context, GALLERY_ROUTE)
//TODO 8. Do hot reload
//TODO 9. Check that in-app navigation works properly


