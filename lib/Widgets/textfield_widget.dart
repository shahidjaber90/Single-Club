import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Utils/colors.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({super.key, required this.labelText});
  String? labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      // child: Container(
      //   alignment: Alignment.center,
      //   height: 40,
      //   // width: 295,
      //   decoration: BoxDecoration(
      //       color: ColorConstant.whiteColor,
      //       border: Border.all(width: 2, color: ColorConstant.blueColor)),
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorConstant.blueColor, width: 2)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: ColorConstant.blueColor)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          hintText: labelText,
          hintStyle: GoogleFonts.poppins(
              fontSize: 16, color: ColorConstant.arrowColor),
        ),
      ),
      // ),
    );
  }
}

//////////////////////////////////////////////////////////////////////////

class TextFieldWidget21 extends StatefulWidget {
  TextFieldWidget21({
    super.key,
    required this.labelText,
  });
  String? labelText;

  @override
  State<TextFieldWidget21> createState() => _TextFieldWidget21State();
}

class _TextFieldWidget21State extends State<TextFieldWidget21> {
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: TextFormField(
        obscureText: isObsecure,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorConstant.blueColor, width: 2)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: ColorConstant.blueColor)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          hintText: widget.labelText,
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isObsecure = !isObsecure;
                });
              },
              icon: isObsecure
                  ? Icon(Icons.visibility_off, color: ColorConstant.arrowColor)
                  : Icon(Icons.visibility, color: ColorConstant.blueColor)),
          hintStyle: GoogleFonts.poppins(
              fontSize: 16, color: ColorConstant.arrowColor),
        ),
      ),
      // ),
    );
  }
}
