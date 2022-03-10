/**
 *              Buttons Business Logic
 */
//TODO 1. Lets add some logic to the buttons to navigate between images
//TODO 2. In the _GalleryScreenState class, add a list with 3 images:
/// class _GalleryScreenState extends State<GalleryScreen> {
///    List<String> _images = [
///           "https://image.tmdb.org/t/p/w500/xvx4Yhf0DVH8G4LzNISpMfFBDy2.jpg",
///           "https://image.tmdb.org/t/p/w500/svIDTNUoajS8dLEo7EosxvyAsgJ.jpg",
///           "https://image.tmdb.org/t/p/w500/iiZZdoQBEYBv6id8su7ImL0oCbD.jpg"
///       ];
///...

//TODO 3. We will use the buttons to navigate between these images
//TODO 4. Add an index integer variable to the State class
///       int _index = 0;
//TODO 5. We will use this index to select an image from the list
//TODO 6. Add two methods to decrement and increment the index
///    void _handleNext() {
///       setState(() {
///        index++;
///       });
///    }

///    void _handlePrevious() {
///       setState(() {
///        _index--;
///       });
///    }
//TODO 7. Notice that these methods calls the setState() method, this is a Flutter framework method which cause
///    the widget to rebuild with a new state.
//TODO 8. In the Image.network widget, replace the hardcoded URL with images[index]
///    Image.network(
///        images[_index],
///        fit: BoxFit.fill,
///     ),
//TODO 9. This will load an image from the list according to the index
//TODO 10. We need to prevent user from click Next when reaching the last and first image in the array.
//TODO 11. We should set the onPressed callback of the 'Next' button to null when reaching (array size - 1)
//TODO 12  We should do the same to the 'Previous' button when reaching to index 0
//TODO 13. In the 'Next' button, use a ternary statement to set the onPressed callback to null like this:
///       _buildPageButton(
///           title: "Next",
///           onPressed: _index < (_images.length - 1) ? () {
///          _handleNext();
///          } : null,
///       )
//TODO 14. Do the same for 'Previous' button, set the onPressed callback to null like this:
///     _buildPageButton(
///      title: "Previous",
///      onPressed: _index > 0 ? () {
///         _handlePrevious();
///        } : null,
///    )
///

/**
 *   Dart short syntax
 */

//TODO 15. In dart, we can have a short syntax, when a callback needs to call a method with same signature,
/// In this case, we can eliminate both the callback () {} and call the method name without () in short syntax as following
///  onPressed: _index > 0 ? _handlePrevious; : null,
//TODO 16. Do hot reload, click the buttons the images should now be loaded from the list
//TODO 17. When reaching the last image the 'Next' button should be disabled
//TODO 18. When reaching the first image the 'Previous' button should be disabled

/**
 *  Extracting the page body build to a method
 */

//TODO 19. Click the Column Widget
//TODO 20. Press Alt + Up/Down arrows to select the content of the children array
//TODO 21. Notice that the framework helps you to select blocks with separated by commas.
//TODO 22. When the children array is marked, press Options+Cmd+M
//TODO 23. In the Extract Method dialog, set the method name to _buildContent
//TODO 24. Check out for the new created method, which is now called where the Column was.
//TODO 25. Do Hot Reload, checkout that the the gallery works properly