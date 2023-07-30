import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  TextWidget({super.key,required this.text});
  String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text!,style: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5
      ),),
    );
  }
}
