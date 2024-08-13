import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileNameText extends StatelessWidget {
  final String text;

  const ProfileNameText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15.0,
        left: 0.0,
        right: 0.0,
        bottom: 0.0,
      ), // Adjust the right padding as needed
      child: Text(
        text,
        style: GoogleFonts.alegreyaSansSc(
          fontSize: 35,
        ),
      ),
    );
  }
}
