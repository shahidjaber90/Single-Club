import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Utils/colors.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({super.key, required this.labelText});
  String? labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 295,
        decoration: BoxDecoration(
            color: ColorConstant.whiteColor,
            border: Border.all(width: 2, color: ColorConstant.blueColor)),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            suffixIcon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: ColorConstant.blueColor,
            ),
            hintText: labelText,
            hintStyle: GoogleFonts.poppins(
                fontSize: 16, color: ColorConstant.arrowColor),
          ),
        ),
      ),
    );
  }
}
