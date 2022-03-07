/**
 *              Add a raised button
 */

//TODO  1. Go over the body Text widget and click Alt+Enter
//TODO  2. Select 'Wrap with new widget' option
//TODO  3. Rename the new widget to ElevatedButton, add a ',' after the Text widget inside the RaisedButton
///    child: ElevatedButton(child: Text("Hello Flutter"),)
//TODO  4. Reformat the code by pressing Alt+Cmd+L, notice the difference with or without the ','
/**
    body: Center(
    child: ElevatedButton(
    child: Text("Hello Flutter"),
    ),a)
*/
//TODO 5. Do hot reload, notice the new disabled button.
//TODO 6. Lets set the button stretched to the screen width.
//TODO 7. Wrap the button with a Column, click on the RaisedButton, select wrap with Column
//TODO 8. Hot reload, the button jumped to the left of the screen.
//TODO 9. In the Row constructor above the children[] argument, add the following:
///    mainAxisAlignment: MainAxisAlignment.center,
///    mainAxisSize: MainAxisSize.max,
///    crossAxisAlignment: CrossAxisAlignment.stretch,
///    Do hot reload.
//TODO 10. The button is now stretched all the screen width
//TODO 11. Add Padding to the button, select the button, repeat 1+2 and wrap it with new widget
//TODO 12. Select Add padding. Do hot reload
//TODO 13. Enable the button by adding a onClick callback:
///    In the RaisedButton constructor, add onPressed: callback:
///    onPressed: (){
///
///    }
//TODO 14. Do hot reload ('r'), the button should now be enabled
//TODO 15. Add a log message to the button pressed:
///    in the onPressed: function add:
///    print("Button Pressed");

//TODO 16. Do hot reload, see button color, press button and see log messages on the terminal.
