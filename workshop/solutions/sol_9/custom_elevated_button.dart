import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final double height;

  const CustomElevatedButton({Key? key, this.onPressed, required this.child, this.height = 50}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
        ),
        child: this.child,
        onPressed: this.onPressed,
      ),
    );
  }
}
