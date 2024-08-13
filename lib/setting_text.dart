import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingTextWidget extends StatelessWidget {
  final String text;

  const SettingTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.alegreyaSansSc(
        fontSize: 20,
      ),
    );
  }
}
