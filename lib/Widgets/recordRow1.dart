import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Utils/colors.dart';

class RecordRow1 extends StatelessWidget {
  String? textOne;
  String? textTwo;
  RecordRow1({super.key, required this.textOne, required this.textTwo});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          height: 25,
          width: 160,
          child: Text(
            textOne!,
            style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: ColorConstant.blueColor),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          height: 25,
          width: 160,
          child: Text(
            textTwo!,
            style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: ColorConstant.blueColor),
          ),
        ),
      ],
    );
  }
}

// Row 2

class RecordRow2 extends StatelessWidget {
  String? textOne;
  String? textTwo;
  RecordRow2({super.key, required this.textOne, required this.textTwo});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 10),
          alignment: Alignment.bottomCenter,
          height: 45,
          width: 120,
          decoration: BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: ColorConstant.blueColor))),
          child: Text(
            textOne!,
            style: GoogleFonts.inter(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: ColorConstant.blueColor),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(bottom: 10),
          alignment: Alignment.bottomRight,
          height: 45,
          width: 120,
          decoration: BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: ColorConstant.blueColor))),
          child: Text(
            textTwo!,
            style: GoogleFonts.inter(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: ColorConstant.blueColor),
          ),
        ),
      ],
    );
  }
}
// Row 3

class RecordRow3 extends StatelessWidget {
  String? textOne;
  RecordRow3({super.key, required this.textOne});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          // alignment: Alignment.bottomCenter,
          height: 40,
          // width: 120,
          child: Text(
            textOne!,
            style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: ColorConstant.blueColor),
          ),
        ),
      ],
    );
  }
}
