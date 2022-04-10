/**
 * Integrate GalleryStore with Provider
 *
 *
 * In the last lesson, we've created the GalleryStore class which contains all the logic for the gallery page
 * Now, we want to use it in the GalleryScreen. For this, we will use the Provider library.
 *
 * The Provider library is the most popular state management library for Flutter. It is a wrapper and implementation
 * for Flutter InheritedWidget concept, which utilize the Flutter Widget Tree structure to create ancestors Widgets so child Widgets can access
 * these ancestors from anywhere down the tree.
 *
 * A typical Flutter Widget tree:
 *
 *                    MaterialApp
 *                         |
 *                         |
 *                   ------------
 *                   |          |
 *                   |          |
 *              HomeScreen  GalleyScreen
 *
 * A Typical tree using provider:
 *
 *                Provider<GalleryStore> <- -|
 *                       |                   |
 *                       |                   |
 *                  MaterialApp              |
 *                       |                   |
 *                       |                   |
 *                       |                   |
 *               -----------------           |
 *               |               |           |
 *               |               |           |
 *          HomeScreen     GalleryScreen ----Provider.of<GalleryStore>(context)
 *
 * */

//TODO 1. Open the application.dart file
//TODO 2. Select the MaterialApp, press option+Enter and select Wrap with widget
//TODO 3. Set the new Widget MultiProvider
//TODO 4. In the create widget, add the providers: [] property array
//TODO 5. The MultiProvider allows to create a list of providers which will be ancestors for all child widgets below.
//TODO 6. In the providers: [] array, create Provider for the GalleryStore which we created in the last lesson.
/// providers: [
///   Provider<GalleryStore>(create: (_) => GalleryStore()) //Here we've created an instance of the GalleryStore and set it as an ancestor
/// ]
/// Q: How can we now access the GalleryStore
/// A: We can use the Provider.of<>(context), to access it anywhere down the widget tree
//TODO 7. Open the gallery_screen.dart
//TODO 8. In the GalleryState<> class, create late GalleryStore _store file
/// late GalleryStore _store;
//TODO 9. In the state class, above the build method override the didChangeDependencies method
//TODO 10. Initialize the _store object with Provider as following:
/// @override
///   void didChangeDependencies() {
///     super.didChangeDependencies();
///     _store = Provider.of<GalleryStore>(context);
///   }
//TODO 11.Next, in order to listen the Store changes, we can wrap our Widget content with Observer, by this, the content will be
///         rebuild each time the Store notifies about changes.
//TODO 12. Select the Column of the inside the _buildContent method, press option+Enter and select Wrap with widget
//TODO 13. Set the wrapping Widget to Observer, change the method return type to Widget (Instead of Column)
//TODO 14. The Observer widget should take a builder: property.
//TODO 15. Inside the Observer, define a builder: property as follow:
/// Observer(
///    builder: (context) => Column
/// )
//TODO 16. Mark the Column widget (use option+ UpArrow), cut and paste the content in the builder: as shown in step 15
//TODO 17. The _buildContent method now should look like this:
/// Widget _buildContent() {
///      return Observer(
///         builder: (_) => Column(
///           mainAxisSize: MainAxisSize.max,
///           ...
///
//TODO 18. Lets now use the store in our page
//TODO 19. Replace the Image.network content from _images[_index] to _store.image
/// Image.network(
///                _store.image,
///                 fit: BoxFit.fill,
///                 )
//TODO 20. Replace the the buttons onPressed to invoke _store.next and _store.previous
/// _buildPageButton(
///                     title: "Previous",
///                     onPressed: _store.first ?  null :  _store.previous,
///                   )
///
/// _buildPageButton(
///                     title: "Next",
///                     onPressed: _store.last ? null : _store.next,
///                   )

//TODO 21. Clean gallery screen unused code
//TODO 22. Delete the images list, the _index variable and the _handleNext and _handlePrevious methods
//TODO 23. Congratiolations! You've reached almost the end of this codelab! The last chapter will be a bonus, using Route navigation in Flutter!