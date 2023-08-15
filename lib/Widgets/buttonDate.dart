import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Utils/colors.dart';

class ButtonDate extends StatelessWidget {
  String? buttonText;
  ButtonDate({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        alignment: Alignment.center,
        height: 30,
        width: 160,
        decoration: BoxDecoration(
            color: ColorConstant.blueColor,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12))),
        child: Text(
          buttonText!,
          style: GoogleFonts.inter(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: ColorConstant.whiteColor),
        ),
      ),
    );
  }
}
