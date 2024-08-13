import 'package:flutter/material.dart';
import 'add_property_screen.dart';

class AddPropertyButton extends StatelessWidget {
  final double borderRadius;
  final double width; // Add width parameter
  final double height; // Add height parameter

  const AddPropertyButton({
    super.key,
    this.borderRadius = 16.0,
    this.width = 60.0, // Default width
    this.height = 60.0, // Default height
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddPropertyScreen()),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.zero, // Remove default padding to fit the Container
      ),
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
