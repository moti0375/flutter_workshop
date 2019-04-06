/**
 *              Add a raised button
 *
 * 1. Go over the body Text widget and click Alt+Enter
 * 2. Select 'Wrap with new widget' option
 * 3. Rename the new widget to RaisedButton, add a ',' after the Text widget inside the RaisedButton
      child: RaisedButton(child: Text("Hello Flutter"),)
 * 4. Reformat the code by pressing Alt+Cmd+L, notice the difference with or without the ','
      body: Center(
       child: RaisedButton(
         child: Text("Hello Flutter"),
       ),
      )
    5. Do hot reload, notice the new disabled button.
    6. Lets set the button streched to the screen width.
    7. Wrap the button with a Column, click on the RaisedButton, select wrap with Column
    8. Hot reload, the button jumped to the left of the screen.
    9. In the Row constructor above the children[] argument, add the following:
       mainAxisAlignment: MainAxisAlignment.center,
       mainAxisSize: MainAxisSize.max,
       crossAxisAlignment: CrossAxisAlignment.stretch,
    Do hot reload.
    10. The button is now streched all the screen width
    11. Add Padding to the button, select the button, repeat 1+2 and wrap it with new widget
    12. Select Add padding. Do hot reload
    13. Enable the button by adding a onClick callback:
        In the RaisedButton constructor, add onPressed: callback:
        onPressed: (){

        }
    14. Do hot reload ('r'), the button should now be enabled
    15. Set the button color to the Theme primary color
        In the RaisedButton constructor add:
          color: Theme.of(context).primaryColor

    16. Set the button text color to the Theme button text color:
        In the RaisedButton constructor, add:
        textColor: Theme.of(context).primaryTextTheme.button.color

    17. Add a log message to the button pressed:
        in the onPressed: function add:
        print("Button Pressed");

    18. Do hot reload, see button color, press button and see log messages on the terminal.
 *
 * * */