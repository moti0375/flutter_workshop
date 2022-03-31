/**
 *    Gallery Screen - Building the screen
 */

//TODO 1. At the top of the _GalleryPageState class declare a String member variable:
// final String _imageUrl = "https://image.tmdb.org/t/p/w500/xvx4Yhf0DVH8G4LzNISpMfFBDy2.jpg";
//TODO 2. Under the children Widgets array, add:
///    Image.network( _imageUrl )
//TODO 3. Set the image fit: to fit: BoxFit.fill
//TODO 4. In the
///    Image.network(_imageUrl, fit: BoxFit.fill,)
//TODO 5. Do hot reload
//TODO 6. Let's add two buttons at the bottom of the Image.
//TODO 7. Under the Image.network, add a Row() widget:
///    Image.network(
///    ...
///    ), //Image.network
///    Row(

///    ), //Always add a comma after the last widget

//TODO 8. Set the Row attributes and an empty children array:
///    Row(
///         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
///         mainAxisSize: MainAxisSize.max,
///         crossAxisAlignment: CrossAxisAlignment.center,
///         children: [ ]
///         ),
//TODO 9. In the empty array, add two ElevatedButton() objects
//TODO 10. For now, set each button onPressed: to null and child: to Text()
//TODO 11. Set the first button child to: Text("Previous"),
//TODO 12. Set the second button child to Text("Next"),
/// ElevatedButton(onPressed: null, child: Text("Next"))
/// ElevatedButton(onPressed: null, child: Text("Previous"))
//TODO 13. Do hot reload, watch the page with image, and two disabled buttons.
//TODO 14. Lets make the buttons expanded with some padding.
//TODO 15. Click on the first ElevatedButton, press Alt+Enter, select Wrap with new Widget
//TODO 16. Set the new Widget name to Expanded
//TODO 17. Repeat 12 - 13 steps for the second button
//TODO 18. Do hot reload, notice the buttons now fully expanded.
/// Expanded(child: ElevatedButton(onPressed: null, child: Text("Next")))
/// Expanded(child: ElevatedButton(onPressed: null, child: Text("Previous")))

/**
 *
 *  Add some padding to the buttons
 *
 */

//TODO 20. Select the first ElevatedButton, click on the Flutter Outline tab at the right side of the screen:
// Press on Wrap with padding button
//TODO 21. Set the padding to: padding: const EdgeInsets.symmetric(horizontal: 4)
//TODO 22. Repeat steps 20,21 for the second button.
/// Expanded(
///    child: Padding(
///    padding: EdgeInsets.symmetric(horizontal: 4),
///    child: ElevatedButton(onPressed: null, child: Text("Previous")),
///     ),
///    )

//TODO 23. Do hot reload, the buttons now should have some padding
