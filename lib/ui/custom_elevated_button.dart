import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final double height;
  final bool loading;

  const CustomElevatedButton({Key? key, this.onPressed, required this.title, this.height = 50, this.loading = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
        ),
        child: loading ? CircularProgressIndicator() : Text(this.title),
        onPressed: loading ? null : this.onPressed,
      ),
    );
  }
}
