/**
 *    Gallery Screen - Building the screen
 */

//TODO 1. Under the children Widgets array, add:
///    Image.network() with the following URL :"https://image.tmdb.org/t/p/w500/xvx4Yhf0DVH8G4LzNISpMfFBDy2.jpg"
//TODO 2. Set the image fit: to fit: BoxFit.fill
///    Image.network("https://image.tmdb.org/t/p/w500/xvx4Yhf0DVH8G4LzNISpMfFBDy2.jpg", fit: BoxFit.fill,)
//TODO 3. Do hot reload
//TODO 4. Let's add two buttons at the bottom of the Image.
//TODO 5. Under the Image.network, add a Row() widget:
///    Image.network(
///    ...
///    ), //Image.network
///    Row(

///    ), //Always add a comma after the last widget

//TODO 6. Set the Row attributes and an empty children array:
///    Row(
///         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
///         mainAxisSize: MainAxisSize.max,
///         crossAxisAlignment: CrossAxisAlignment.center,
///         children: [ ]
///         ),
//TODO 7. In the empty array, add two ElevatedButton() objects
//TODO 8. For now, set each button onPressed: to null and child: to Text()
//TODO 9. Set the first button child to: Text("Previous"),
//TODO 10. Set the second button child to Text("Next"),
/// ElevatedButton(onPressed: null, child: Text("Next"))
/// ElevatedButton(onPressed: null, child: Text("Previous"))
//TODO 11. Do hot reload, watch the page with image, and two disabled buttons.
//TODO 12. Lets make the buttons expanded with some padding.
//TODO 13. Click on the first ElevatedButton, press Alt+Enter, select Wrap with new Widget
//TODO 14. Set the new Widget name to Expanded
//TODO 15. Repeat 12 - 13 steps for the second button
//TODO 16. Do hot reload, notice the buttons now fully expanded.
/// Expanded(child: ElevatedButton(onPressed: null, child: Text("Next")))
/// Expanded(child: ElevatedButton(onPressed: null, child: Text("Previous")))
//TODO 17. Now lets add some padding to the buttons
//TODO 18. Select the first RaisedButton, press Alt+Enter, select, Wrap with padding
//TODO 19. Set the padding to: padding: const EdgeInsets.symmetric(horizontal: 4)
//TODO 20. Follow steps 17-18 for the second button.
/// Expanded(
///    child: Padding(
///    padding: EdgeInsets.symmetric(horizontal: 4),
///    child: ElevatedButton(onPressed: null, child: Text("Previous")),
///     ),
///    )

//TODO 21. Do hot reload, the buttons now should have some padding
