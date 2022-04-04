/**
 *
 *  Gallery Screen Layout and Decoration
 *
 */
/// The gallery screen has some issues, the buttons top side might touching the image, when we navigating to
/// the screen, the buttons jumps to the middle of the screen until the first image is loaded.
/// The image is flat, we want to add some shadow.
///
///
///

/**
 * Fix buttons jumping issue
 */

//TODO 1 - In the gallery screen, click/select Image.network Widget
//TODO 2 - Press Options+Enter and select Wrap with Widget option
//TODO 3 - Set the widget to Expanded
/// Expanded(
///           child: Image.network(
///             _images[_index],
///             fit: BoxFit.fill,
///           ),
///         ),
//TODO 4 - Do hot reload, notice that the image now expanded, we still need to add some padding between the image and the buttons.
///        Notice that in IOS the layout is overflow on the device bottom side. We shall fix it in the next steps
//TODO 5 - Select/click on the Row widget, press Options+Enter
//TODO 6 - From the help menu, select Wrap with Padding
//TODO 7 - Set the padding value to be EdgeInsets.only(top: 8.0), This will add some padding between the bottom of the image and the buttons row
//TODO 8 - Do hot reload, look for the better looking layout

/// Padding(
///           padding: const EdgeInsets.only(top: 8.0),
///           child: Row(...
///
/**
 * Add SageArea
 * On ios, we see that the layout reached to the bottom of the screen, we can fix this by using the
 * SafeArea widget
 */

//TODO 9 - Select/Click on the body: Container widget
//TODO 10 - Press options+Enter, select Wrap with widget
//TODO 11 - Set the widget to be SafeArea
//TODO 12 - Set the SafeArea bottom: true
///
/// body: SafeArea(
///         bottom: true,
///         child: Container()
///         ...
//TODO 13 - Do hot reload, look the final layout

/**
 * Image decoration and Shadow
 * Now that we fixed the layout, its time to decorate the image
 * Lets add some shadow and rounded corners
 */

//TODO 14 - Select the Image.network widget, wrap it with a widget (As we did in previous steps)
//TODO 15 - Set the widget to be ClipRRect()
//TODO 16 - Add borderRadius: property to the new ClipRRect
//TODO 17 - Set the border radius to 10 points as following:
/// ClipRRect(
///             borderRadius: BorderRadius.all(Radius.circular(10))
///             child: Image.network
//TODO 18 - Lets add some shadow to the image
//TODO 19 - Wrap the ClipRRect with Container
//TODO 20 - To the new Container, set decoration: BoxDecoration() property
/// Container(
///               decoration: BoxDecoration(),
///               child: ClipRRect(
//TODO 21 -  Inside the BoxDecoration, set the borderRadius as follow:
/// decoration: BoxDecoration(
///                 borderRadius: BorderRadius.all(Radius.circular(10)),
///               )
//TODO 22 - Under the boarderRadius:, add a boxShadow: property
/// BoxDecoration(
///               borderRadius: BorderRadius.all(Radius.circular(10)),
///               boxShadow: [
///                 BoxShadow(
///                   color: Colors.black38,
///                   offset: Offset(4.0, 4.0),
///                   blurRadius: 10.0,
///                   spreadRadius: 0.4,
///                 ),
///               ],
///             )
//TODO 23 - Do hot reload and look for the changes.
