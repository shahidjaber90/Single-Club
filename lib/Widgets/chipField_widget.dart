import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Utils/colors.dart';

class ChipFieldWidget extends StatelessWidget {
  String? hintText;
  ChipFieldWidget({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 36,
      child: TextField(
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.5,
                color: ColorConstant.arrowColor),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: ColorConstant.blueColor))),
      ),
    );
  }
}
