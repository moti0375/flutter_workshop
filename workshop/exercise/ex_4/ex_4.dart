/**
 *              Add Elevated Button
 */

//TODO  1. Go over the Text widget and click Alt+Enter
//TODO  2. From the drop down menu, select 'Wrap with new widget' option
//TODO  3. Rename the new widget to ElevatedButton, add a ',' after the Text widget inside the ElevatedButton
///    child: ElevatedButton(child: Text("Hello Flutter"),)
//TODO  4. Notice that ElevatedButton requires an onPressed callback, for now set it to be null
//TODO  5. Reformat the code by pressing Alt+Cmd+L, notice the difference with or without the last comma ','
/**
    body: Center(
    child: ElevatedButton(
       child: Text("Hello Flutter"),
       onPressed: null
      ), //ElevatedButton
    ) //Center
*/
//TODO 6. Do hot reload, notice the new disabled button. That's because the onPressed property is null
//TODO 7. Lets set the button stretched to the screen width
//TODO 8. Wrap the button with a Column, click on the RaisedButton, select wrap with Column
//TODO 9. Hot reload, the button jumped to the left of the screen.
//TODO 10. In the Column constructor, above the children[] property, add the following:
///    mainAxisAlignment: MainAxisAlignment.center,
///    mainAxisSize: MainAxisSize.max,
///    crossAxisAlignment: CrossAxisAlignment.stretch,
//TODO 11.    Do hot reload.
//TODO 12. The button is now stretched all the screen width
//TODO 13. Add Padding to the button, select the button, repeat 1+2 and wrap it with new widget
//TODO 14. Select Add padding. Do hot reload
//TODO 15. Enable the button by adding a onClick callback:
///    In the RaisedButton constructor, add onPressed: callback:
///    onPressed: (){
///
///    }
//TODO 16. Do hot reload ('r'), the button should now be enabled
//TODO 17. Add a log message to the button pressed:
///    in the onPressed: function add:
///    print("Button Pressed");
//TODO 18. Do hot reload, see button color, press button and see log messages on the terminal.
