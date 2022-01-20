import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {

  final VoidCallback onPressed;
  final Widget child;
  final bool isLoading;

  const CustomRaisedButton({Key key, this.onPressed, this.child, this.isLoading = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        side: BorderSide(color:  Theme.of(context).buttonColor)
      ),
      textColor: Theme.of(context).accentTextTheme.button.color,
      child: isLoading ? CircularProgressIndicator() : this.child,
      onPressed: isLoading ? null : this.onPressed,
    );
  }
}
