/**
 *              Images Page - Enabling buttons, Extract methods
 */

//TODO 1. The buttons are still disabled, that's because we've set their onPressed: property to be null.
//TODO 2. Inside the first button constructor, set the onPressed: --> onPressed: (){}
//TODO 3. Repeat last step for the second button
//TODO 4. Do hot reload, the buttons are now enabled and clickable.
//TODO 5. Lets extract the buttons creation to a method which takes parameters, and return a Widget object.
//TODO 6. Select the Padding of the first ElevatedButton, press option+command+M, the extract method dialog will be shown.
//TODO 7. Select ExtractMethod, set the method name to _buildPageButton
//TODO 8. Modify the method as following:
/// Widget _buildPageButton({required String title, Function()? onPressed})
//TODO 9. Fix the compilation errors in the location were the button was as following:
///     Expanded(
///             child: _buildPageButton(title: "Previous", onPressed: () {},) //_buildPageButton,
///     ) //Expanded,
//TODO 9.1 Q: What does _ at the method name means?
//TODO 9.2 A: In Dart, classes, variables and method names which begins with _ are private

//TODO 10. Replace the second button by calling the _buildPageButton
///    _buildPageButton(context: context, title: "Next", onPressed: (){},)

//TODO 11. We still need to fix the _buildPageButton method
//TODO 12. In the method, replace the Text("") with Text(title)
//TODO 13. Replace the onPressed: (){} with onPressed: onPressed
//TODO 14. The method should now look like this:
///    Widget _buildPageButton({String title, Function() onPressed}) {
///     return Padding(padding: const EdgeInsets.symmetric(horizontal: 4),
///                    child: ElevatedButton(
///                                          child: Text(title),
///                                          onPressed: onPressed,),
///                    );
///      }
