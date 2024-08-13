import 'package:flutter/material.dart';

class SpecialButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final double width;
  final double height;
  final BorderRadiusGeometry borderRadius;

  const SpecialButton({super.key, 
    required this.onPressed,
    required this.text,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.transparent,
    this.width = double.infinity,
    this.height = 50.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(0)),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
         backgroundColor: backgroundColor, // Text color (or you can adjust as needed)
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius, // Border radius of the button
          ),
          shadowColor: Colors.transparent, // Removes shadow if needed
          elevation: 0, // Removes elevation if needed
        ),
        child: Center(
          child: Text(text,
          style:TextStyle(color:textColor)),
        ),
      ),
    );
  }
}
