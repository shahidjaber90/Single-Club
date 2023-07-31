import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Utils/colors.dart';

class AlertButton extends StatelessWidget {
  AlertButton({super.key, required this.buttonName});
  String? buttonName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.center,
              height: 30,
              width: 111,
              decoration: BoxDecoration(
                color: ColorConstant.blueColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                buttonName!,
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: ColorConstant.whiteColor),
              ),
            ),
          ),
          // save
        ],
      ),
    );
  }
}
