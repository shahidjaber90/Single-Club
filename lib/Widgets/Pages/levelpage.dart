import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/alertButton.dart';

import '../textfield_widget.dart';

class Levelview extends StatefulWidget {
  const Levelview({super.key});

  @override
  State<Levelview> createState() => _LevelviewState();
}

class _LevelviewState extends State<Levelview> {
  final List text = [
    "Level Name",
    "Level Icon",
    "Coin require",
    "Show",
    "Admin Name",
    "Category",
    "Date/Time",
    "Action",
  ];
  final List text2 = [
    "01",
    "image",
    "100k",
    "off",
    "King of Kings",
    "Master Panel",
    "24-72 Hours 3 Time",
    "Edit",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 200,
              width: 500,
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      scrollable: true,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      actions: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.30,
                          color: ColorConstant.whiteColor,
                          child: Column(
                            children: [
                              Container(
                                height: 53,
                                width: double.infinity,
                                color: ColorConstant.blueColor,
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "Add Level",
                                  style: GoogleFonts.poppins(
                                      color: ColorConstant.whiteColor,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 40,
                                    width: 280,
                                    child: Stack(
                                      children: [
                                        GestureDetector(
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 138,
                                            height: 32,
                                            decoration: BoxDecoration(
                                                color: ColorConstant.whiteColor,
                                                border: Border.all(
                                                    color: ColorConstant
                                                        .blueColor),
                                                borderRadius:
                                                    BorderRadius.circular(24)),
                                            child: Text(
                                              'Show off',
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.blueColor,
                                                  letterSpacing: 0.5,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 120,
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 138,
                                            height: 32,
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blueColor,
                                                borderRadius:
                                                    BorderRadius.circular(24)),
                                            child: Text(
                                              'Show off',
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.whiteColor,
                                                  letterSpacing: 0.5,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextFieldWidget(labelText: 'Level Name :'),
                              const SizedBox(
                                height: 15,
                              ),
                              TextFieldWidget(labelText: 'Coin require'),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 100,
                                width: 140,
                                color: ColorConstant.whiteColor,
                                child: Column(
                                  children: [
                                    Text(
                                      textAlign: TextAlign.center,
                                      "Upload File",
                                      style: GoogleFonts.poppins(
                                          color: ColorConstant.blueColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Image.asset(
                                        "assets/icons/cloudupload.png",
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Text(
                                      textAlign: TextAlign.center,
                                      "SVG/WEP",
                                      style: GoogleFonts.poppins(
                                          color: ColorConstant.blueColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              AlertButton(buttonName: 'Add'),
                              const SizedBox(
                                height: 24,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 138,
                  height: 32,
                  decoration: BoxDecoration(
                      color: ColorConstant.blueColor,
                      border: Border.all(color: ColorConstant.blueColor),
                      borderRadius: BorderRadius.circular(24)),
                  child: Text(
                    'Add Level',
                    style: TextStyle(
                        color: ColorConstant.whiteColor,
                        letterSpacing: 0.5,
                        fontSize: 11,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 200,
              width: 500,
              child: Text(
                'Result',
                style: GoogleFonts.aBeeZee(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),

        // menu
        Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: ColorConstant.whiteColor
              // color: ColorConstant.whiteColor,
              ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
                text.length,
                (index) => Text(
                      text[index],
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    )),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: ColorConstant.whiteColor
              // color: ColorConstant.whiteColor,
              ),
          child: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Expanded(
              // flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  text2.length,
                  (index) => Text(
                    text2[index],
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                  growable: true,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
