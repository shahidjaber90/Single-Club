import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminFieldHeading extends StatelessWidget {
  const AdminFieldHeading({super.key, required this.headingText});
  final String headingText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Text(
        headingText,
        style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w400),
      ),
    );
  }
}
