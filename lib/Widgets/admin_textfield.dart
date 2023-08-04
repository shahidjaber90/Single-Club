import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Utils/colors.dart';

class AdminTextFieldWidget extends StatelessWidget {
  AdminTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 34,
      width: MediaQuery.of(context).size.width * 0.24,
      decoration: BoxDecoration(
          color: ColorConstant.whiteColor,
          border: Border.all(width: 2, color: ColorConstant.blueColor)),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
