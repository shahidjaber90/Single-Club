import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldHeadnig extends StatelessWidget {
  TextFieldHeadnig({super.key, required this.headingText});
  String? headingText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        headingText!,
        textAlign: TextAlign.left,
        style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400),
      ),
    );
  }
}
