import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Utils/colors.dart';

class AdminTextFieldWidget extends StatelessWidget {
  AdminTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 40,
      width: MediaQuery.of(context).size.width * 0.24,
      decoration: BoxDecoration(
          color: ColorConstant.whiteColor,
          border: Border.all(width: 2, color: ColorConstant.blueColor)),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 10),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
