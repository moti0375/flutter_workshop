import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final double height;
  final bool loading;

  const CustomElevatedButton({
    Key? key,
    this.onPressed,
    required this.child,
    this.height = 50,
    this.loading = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      child: ElevatedButton(
        child: loading ? CircularProgressIndicator() : this.child,
        onPressed: loading ? null : this.onPressed,
      ),
    );
  }
}
