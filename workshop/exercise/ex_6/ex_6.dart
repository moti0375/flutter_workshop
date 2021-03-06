/**
 *              Images Page - Build the page
 *
 * 1. Under the children Widgets array, add:
      Image.network() with the following URL :
       "https://image.tmdb.org/t/p/w500/xvx4Yhf0DVH8G4LzNISpMfFBDy2.jpg"

   2. Set the image fit: to fit: BoxFit.fill
    Image.network(
    "https://image.tmdb.org/t/p/w500/xvx4Yhf0DVH8G4LzNISpMfFBDy2.jpg",
    fit: BoxFit.fill,
    )
   3. Do hot reload
   4. Let's add two buttons at the bottom of the Image.
   5. Under the Image.network, add a Row() widget:
    Image.network(
     ...
    ), //Image.network
    Row(

    ), //Always add a comma after the last widget

   6. Set the Row attributes and an empty children array:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        ]
      ),
    7. In the empty array, add two RaisedButtons()
    8. Set the first button child to: Text("Previous"),
    9. Set the second button child to Text("Next"),
    10. Do hot reload, watch the page with image, and two disabled buttons.
    11. Lets make the buttons expanded with some padding.
    12. Click on the first RaisedButton, press Alt+Enter,
        select Wrap with new Widget
    13. Set the new Widget name to Expanded
    14. Repeat 12 - 13 steps for the second button
    15. Do hot reload, notice the buttons now fully expanded.
    16. Now lets add some padding to the buttons
    17. Select the first RaisedButton, press Alt+Enter, select, Add padding
    18. Set the padding to:
         padding: const EdgeInsets.symmetric(horizontal: 4)
    19. Follow steps 17-18 for the second button.
    20. Do hot reload, the buttons now should have some padding
 * * */