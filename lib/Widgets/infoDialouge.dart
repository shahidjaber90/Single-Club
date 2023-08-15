import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Utils/colors.dart';

class InfoDialouge extends StatefulWidget {
  const InfoDialouge({super.key});

  @override
  State<InfoDialouge> createState() => _InfoDialougeState();
}

class _InfoDialougeState extends State<InfoDialouge> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  content: Container(
                      height: 480,
                      width: 500,
                      decoration: BoxDecoration(
                          color: ColorConstant.whiteColor,
                          border: Border.all(
                              width: 2, color: ColorConstant.blueColor)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.ac_unit_sharp,
                                  color: ColorConstant.whiteColor,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 32,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: ColorConstant.blueColor,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Text(
                                    'Record',
                                    style: GoogleFonts.dmSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: ColorConstant.whiteColor),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.close,
                                      color: ColorConstant.blueColor,
                                    ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 150,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Ban Date/ Time',
                                    style: GoogleFonts.dmSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: ColorConstant.blueColor),
                                  ),
                                ),
                                Container(
                                  width: 150,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Reason',
                                    style: GoogleFonts.dmSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: ColorConstant.blueColor),
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Category',
                                    style: GoogleFonts.dmSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: ColorConstant.blueColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // 2nd row
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 150,
                                  alignment: Alignment.center,
                                  child: Text(
                                    '14/Feb /2021 9:45 PM',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstant.blackColor
                                            .withOpacity(0.80)),
                                  ),
                                ),
                                Container(
                                  width: 160,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Harassment or bullying',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstant.blackColor
                                            .withOpacity(0.80)),
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Ban',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstant.blackColor
                                            .withOpacity(0.80)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // 3rd row
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 150,
                                  alignment: Alignment.center,
                                  child: Text(
                                    '14/Feb /2021 9:45 PM',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstant.blackColor
                                            .withOpacity(0.80)),
                                  ),
                                ),
                                Container(
                                  width: 160,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Band Language',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstant.blackColor
                                            .withOpacity(0.80)),
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Freeze',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstant.blackColor
                                            .withOpacity(0.80)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // 4th row
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 150,
                                  alignment: Alignment.center,
                                  child: Text(
                                    '14/Feb /2021 9:45 PM',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstant.blackColor
                                            .withOpacity(0.80)),
                                  ),
                                ),
                                Container(
                                  width: 160,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Black Live',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstant.blackColor
                                            .withOpacity(0.80)),
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Device Ban',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstant.blackColor
                                            .withOpacity(0.80)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                );
              });
        },
        icon: Icon(
          Icons.info,
          color: ColorConstant.blueColor,
        ));
  }
}

// dialouge 2

class InfoDialouge2 extends StatefulWidget {
  const InfoDialouge2({super.key});

  @override
  State<InfoDialouge2> createState() => _InfoDialouge2State();
}

class _InfoDialouge2State extends State<InfoDialouge2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  content: Container(
                      height: 480,
                      width: 500,
                      decoration: BoxDecoration(
                          color: ColorConstant.whiteColor,
                          border: Border.all(
                              width: 2, color: ColorConstant.blueColor)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.ac_unit_sharp,
                                  color: ColorConstant.whiteColor,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 32,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: ColorConstant.blueColor,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Text(
                                    'Record',
                                    style: GoogleFonts.dmSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: ColorConstant.whiteColor),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.close,
                                      color: ColorConstant.blueColor,
                                    ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 150,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Ban Date/ Time',
                                    style: GoogleFonts.dmSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: ColorConstant.blueColor),
                                  ),
                                ),
                                Container(
                                  width: 150,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Recharge Amount',
                                    style: GoogleFonts.dmSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: ColorConstant.blueColor),
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Admin',
                                    style: GoogleFonts.dmSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: ColorConstant.blueColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // 2nd row
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 150,
                                  alignment: Alignment.center,
                                  child: Text(
                                    '14/Feb /2021 9:45 PM',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstant.blackColor
                                            .withOpacity(0.80)),
                                  ),
                                ),
                                Container(
                                  width: 160,
                                  alignment: Alignment.center,
                                  child: Text(
                                    '500 k',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstant.blackColor
                                            .withOpacity(0.80)),
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'King of Kings',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstant.blackColor
                                            .withOpacity(0.80)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // 3rd row
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 150,
                                  alignment: Alignment.center,
                                  child: Text(
                                    '14/Feb /2021 9:45 PM',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstant.blackColor
                                            .withOpacity(0.80)),
                                  ),
                                ),
                                Container(
                                  width: 160,
                                  alignment: Alignment.center,
                                  child: Text(
                                    '200 k',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstant.blackColor
                                            .withOpacity(0.80)),
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Nahid Hasan',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstant.blackColor
                                            .withOpacity(0.80)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // 4th row
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 150,
                                  alignment: Alignment.center,
                                  child: Text(
                                    '14/Feb /2021 9:45 PM',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstant.blackColor
                                            .withOpacity(0.80)),
                                  ),
                                ),
                                Container(
                                  width: 160,
                                  alignment: Alignment.center,
                                  child: Text(
                                    '700 k',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstant.blackColor
                                            .withOpacity(0.80)),
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Raja Mia',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstant.blackColor
                                            .withOpacity(0.80)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                );
              });
        },
        child: Text(
          'Check',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
        ));
  }
}
