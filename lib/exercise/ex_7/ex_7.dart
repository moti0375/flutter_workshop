/**
 *              Images Page - Enabling buttons, Extract methods
 *
 * 1. The buttons are still disabled, that's because we haven't set an onPressed callback yet.
   2. Inside the first button constructor, add onPressed:
    onPressed: (){}
   3. Repeat last step for the second button
   4. Do hot reload, the buttons are now enabled and clickable.
   5. Lets style the buttons
   6. Above each button child attribute, Set the button color to:
      color: Theme.of(context).primaryColor

      RaisedButton(
        color: Theme.of(context).primaryColor
        child: ....

    7. Under the color:, set the textColor:
       textColor: Theme.of(context).primaryTextTheme.button.color

    8. Lets extract the buttons creation to a method which takes parameters,
       and return a button.
    9. Select the Padding of the first RaisedButton, click on the Outline tab at the
       right side of the screen.
    10. Select ExtractMethod, set the method name to _buildButton
    11. Modify the method as following:
        _buildPageButton({Context context, String title, Function() callback})
    12. Fix the compilation errors in the location were the button was as following:
        Expanded(
          child: _buildPageButton(
                    context: context,
                    title: "Previous",
                    callback: () {
                     },
                   ) //_buildPageButton,
                  ) //Expanded,

    13. Replace the second button by calling the _buildPageButton
        _buildPageButton(
                         context: context,
                         title: "Next",
                         callback: (){},
                        )

    14. We still need to fix the _buildButton method
    15. In the method, replace the Text("") with Text(title)
    16. Replace the onPressed: (){} with onPressed: callback
    17. The method should now look like this:

    Widget _buildButton({BuildContext context, String title, Function() callback}) {
           return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: RaisedButton(
                                 color: Theme.of(context).primaryColor,
                                 textColor: Theme.of(context).primaryTextTheme.button.color,
                                 child: Text(title),
                                 onPressed: callback,
                                ),
                               );
                              }


 * * */