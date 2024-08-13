import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry padding;

  const CustomText(
    this.text, {
    super.key,
    this.padding = EdgeInsets.zero, // default to zero padding
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        style: GoogleFonts.alegreyaSansSc(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}





// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class CustomText extends StatelessWidget {
//   final String text;

//   const CustomText(this.text, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(
//               top:80.0,
//               left:0.0,
//               right:260.0,
//               bottom:0.0,), // Adjust the right padding as needed
//       child: Text(
//         text,
//         style: GoogleFonts.alegreyaSansSc(
//           fontSize: 32,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }
// }


