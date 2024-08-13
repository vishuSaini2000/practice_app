import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final double borderPadding;
  final int? wordLimit;

  const CustomTextField({super.key, 
    required this.hintText,
    this.borderPadding = 8.0,
    this.wordLimit,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[600]),
        contentPadding: EdgeInsets.only(bottom: borderPadding),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder:const  UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
      inputFormatters: [
        if (wordLimit != null)
          LengthLimitingTextInputFormatter(
            (wordLimit ?? 0) * 10, // Estimate: Assuming an average of 10 characters per word
          ),
      ],
      onChanged: (text) {
        if (wordLimit != null) {
          List<String> words = text.split(RegExp(r'\s+'));
          if (words.length > wordLimit!) {
            // Truncate the text to the word limit
            text = words.take(wordLimit!).join(' ');
          }
        }
      },
    );
  }
}
