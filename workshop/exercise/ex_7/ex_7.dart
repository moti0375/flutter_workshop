/**
 *              Images Page - Enabling buttons, Extract methods
 */

//TODO 1. The buttons are still disabled, that's because we've set their onPressed: property to be null.
//TODO 2. Inside the first button constructor, set the onPressed: --> onPressed: (){}
//TODO 3. Repeat last step for the second button
//TODO 4. Do hot reload, the buttons are now enabled and clickable.
//TODO 5. Lets style the buttons
//TODO 6. Lets extract the buttons creation to a method which takes parameters, and return a button.
//TODO 7. Select the Padding of the first RaisedButton, click on the Outline tab at the right side of the screen.
//TODO 8. Select ExtractMethod, set the method name to _buildButton
//TODO 9. Modify the method as following: _buildPageButton({Context context, String title, Function() callback})
//TODO 10. Fix the compilation errors in the location were the button was as following:
///     Expanded(
///             child: _buildPageButton( context: context, title: "Previous", onPressed: () {},) //_buildPageButton,
///     ) //Expanded,

//TODO 11. Replace the second button by calling the _buildPageButton
///    _buildPageButton(context: context, title: "Next", callback: (){},)

//TODO 12. We still need to fix the _buildButton method
//TODO 13. In the method, replace the Text("") with Text(title)
//TODO 14. Replace the onPressed: (){} with onPressed: callback
//TODO 15. The method should now look like this:
///    Widget _buildButton({BuildContext context, String title, Function() callback}) {
///     return Padding(padding: const EdgeInsets.symmetric(horizontal: 4),
///                    child: ElevatedButton(
///                                          child: Text(title),
///                                          onPressed: callback,),
///                    );
///      }
