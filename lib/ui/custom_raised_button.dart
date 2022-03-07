import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final bool isLoading;

  const CustomRaisedButton({Key? key, this.onPressed, this.child, this.isLoading = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: OutlinedButton.styleFrom(
        side: (onPressed == null || isLoading) ? BorderSide(color: Theme.of(context).buttonTheme.colorScheme?.primary ?? Colors.transparent) : null,
      ),
      child: isLoading ? CircularProgressIndicator() : this.child,
      onPressed: isLoading ? null : this.onPressed,
    );
  }
}
