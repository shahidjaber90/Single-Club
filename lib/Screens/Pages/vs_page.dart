import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/alertButton.dart';
import 'package:singleclub/Widgets/dropdown_widget.dart';

import '../../Widgets/textfield_Widegt3.dart';
import '../../Widgets/textfield_widget.dart';

class VsPage extends StatefulWidget {
  const VsPage({super.key});

  @override
  State<VsPage> createState() => _VsPageState();
}

class _VsPageState extends State<VsPage> {
  final List text = [
    "Host",
    "Opponent",
    "V/S Date",
    "V/S Time",
    "V/S Derision",
    "Agency Name",
    "Country",
    "Action",
  ];
  final List text2 = [
    "Marya Shekadar",
    "Priyotoma Chowdory",
    "14/Feb/2023",
    "11:45",
    "7 Minutes",
    "The Branded Brothers",
    "Bangladesh",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 300,
        backgroundColor: ColorConstant.whiteColor,
        elevation: 0,
        title: GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                // scrollable: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
                actions: [
                  Container(
                    width: 400,
                    color: ColorConstant.whiteColor,
                    child: Column(
                      children: [
                        Container(
                          height: 53,
                          width: double.infinity,
                          color: ColorConstant.blueColor,
                          child: Text(
                            textAlign: TextAlign.center,
                            "Official V/S",
                            style: GoogleFonts.poppins(
                                color: ColorConstant.whiteColor,
                                fontSize: 30,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DropdownWidget3(
                                  title: 'Choose Gift',
                                  hintText: 'Select Gift'),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // textAlign: TextAlign.left,
                                        "Host",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      TextFieldWidget3(
                                          labelText: 'ID Number :'),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // textAlign: TextAlign.left,
                                        "Opponent",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      TextFieldWidget3(labelText: 'ID Number'),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // textAlign: TextAlign.left,
                                        "Date/Time",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      TextFieldWidget3(labelText: 'Date'),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // textAlign: TextAlign.left,
                                        "",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      TextFieldWidget3(labelText: 'Time'),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          // textAlign: TextAlign.left,
                                          "V/S Time",
                                          style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        TextFieldWidget3(labelText: 'Time'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              //     ],
                              //   ),
                              // ),
                              const SizedBox(
                                height: 24,
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
              'Send V/S',
              style: TextStyle(
                  color: ColorConstant.whiteColor,
                  letterSpacing: 0.5,
                  fontSize: 11,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    // flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        text2.length,
                        (index) => Text(
                          text2[index],
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        growable: true,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.edit, color: ColorConstant.blueColor),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.delete, color: ColorConstant.blueColor),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
