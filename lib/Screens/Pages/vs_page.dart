import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/admin_field_heading.dart';
import 'package:singleclub/Widgets/admin_textfield.dart';
import 'package:singleclub/Widgets/admin_textfiled_widget2.dart';
import 'package:singleclub/Widgets/alertButton.dart';
import 'package:singleclub/Widgets/dropdown_widget.dart';

import '../../Widgets/textfield_Widegt3.dart';

class VsPage extends StatefulWidget {
  const VsPage({super.key});

  @override
  State<VsPage> createState() => _VsPageState();
}

class _VsPageState extends State<VsPage> {
  bool tap1 = false;
  bool tap2 = false;
  Color whiteColor = (Colors.white);
  Color blueColor = const Color(0xff2C50ED);
  Color whiteColor2 = (Colors.white);
  Color blueColor2 = const Color(0xff2C50ED);
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
        title: SizedBox(
          width: 240,
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {
                  tap1
                      ? setState(() {
                          tap1 = !tap1;
                          whiteColor = Colors.white;
                          blueColor = Color(0xff2C50ED);
                        })
                      : setState(() {
                          tap1 = !tap1;
                          blueColor = Colors.white;
                          whiteColor = Color(0xff2C50ED);
                        });

                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      // scrollable: true,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      actions: [
                        Container(
                          width: 404,
                          decoration: BoxDecoration(
                              color: ColorConstant.whiteColor,
                              border: Border.all(
                                  color: ColorConstant.blueColor, width: 2)),
                          child: Column(
                            children: [
                              Container(
                                height: 53,
                                width: double.infinity,
                                color: ColorConstant.blueColor,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.access_alarm_sharp,
                                      color: ColorConstant.blueColor,
                                    ),
                                    Text(
                                      textAlign: TextAlign.center,
                                      "Official V/S",
                                      style: GoogleFonts.poppins(
                                          color: ColorConstant.whiteColor,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          tap1
                                              ? setState(() {
                                                  tap1 = !tap1;
                                                  whiteColor = Colors.white;
                                                  blueColor = Color(0xff2C50ED);
                                                })
                                              : setState(() {
                                                  tap1 = !tap1;
                                                  blueColor = Colors.white;
                                                  whiteColor =
                                                      Color(0xff2C50ED);
                                                });
                                          Navigator.pop(context);
                                        },
                                        icon: Icon(
                                          Icons.close,
                                          color: ColorConstant.whiteColor,
                                        ))
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.all(8.0).copyWith(top: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    DropdownWidget4(
                                        items: officialList,
                                        selectItem: 'Select Category'),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                              horizontal: 20)
                                          .copyWith(top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: 150,
                                              child: AdminFieldHeading(
                                                  headingText: 'Host')),
                                          Container(
                                              alignment: Alignment.centerLeft,
                                              width: 150,
                                              child: AdminFieldHeading(
                                                  headingText: 'Opponent')),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          AdminTextFieldWidget3(
                                            width: 150,
                                            labelText: 'ID Number',
                                          ),
                                          AdminTextFieldWidget3(
                                            width: 150,
                                            labelText: 'ID Number',
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                              horizontal: 20)
                                          .copyWith(top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: 150,
                                              child: AdminFieldHeading(
                                                  headingText: 'Date/Time')),
                                          Container(
                                              alignment: Alignment.centerLeft,
                                              width: 150,
                                              child: AdminFieldHeading(
                                                  headingText: '')),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          AdminTextFieldWidget3(
                                            width: 344,
                                            labelText: 'Date',
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          AdminTextFieldWidget3(
                                            width: 150,
                                            labelText: 'Close Time',
                                          ),
                                          AdminTextFieldWidget3(
                                            width: 150,
                                            labelText: 'Start Time',
                                          ),
                                        ],
                                      ),
                                    ),
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
                      color: whiteColor,
                      border: Border.all(color: blueColor),
                      borderRadius: BorderRadius.circular(24)),
                  child: Text(
                    'Add V/S',
                    style: TextStyle(
                        color: blueColor,
                        letterSpacing: 0.5,
                        fontSize: 11,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Positioned(
                  left: 100,
                  child: GestureDetector(
                    onTap: () {
                      tap2
                          ? setState(() {
                              tap2 = !tap2;
                              whiteColor2 = Colors.white;
                              blueColor2 = Color(0xff2C50ED);
                            })
                          : setState(() {
                              tap2 = !tap2;
                              blueColor2 = Colors.white;
                              whiteColor2 = Color(0xff2C50ED);
                            });

                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          // scrollable: true,
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          actions: [
                            Container(
                              width: 404,
                              decoration: BoxDecoration(
                                  color: ColorConstant.whiteColor,
                                  border: Border.all(
                                      color: ColorConstant.blueColor,
                                      width: 2)),
                              child: Column(
                                children: [
                                  Container(
                                    height: 53,
                                    width: double.infinity,
                                    color: ColorConstant.blueColor,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.access_alarm_sharp,
                                          color: ColorConstant.blueColor,
                                        ),
                                        Text(
                                          textAlign: TextAlign.center,
                                          "Live House",
                                          style: GoogleFonts.poppins(
                                              color: ColorConstant.whiteColor,
                                              fontSize: 30,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              tap2
                                                  ? setState(() {
                                                      tap2 = !tap2;
                                                      whiteColor2 =
                                                          Colors.white;
                                                      blueColor2 =
                                                          Color(0xff2C50ED);
                                                    })
                                                  : setState(() {
                                                      tap2 = !tap2;
                                                      blueColor2 = Colors.white;
                                                      whiteColor2 =
                                                          Color(0xff2C50ED);
                                                    });
                                              Navigator.pop(context);
                                            },
                                            icon: Icon(
                                              Icons.close,
                                              color: ColorConstant.whiteColor,
                                            ))
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20,
                                          ).copyWith(top: 18),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              AdminTextFieldWidget3(
                                                width: 344,
                                                labelText: 'ID:',
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                                  horizontal: 20)
                                              .copyWith(top: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                  width: 150,
                                                  child: AdminFieldHeading(
                                                      headingText:
                                                          'Date/Time')),
                                              Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  width: 150,
                                                  child: AdminFieldHeading(
                                                      headingText: '')),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              AdminTextFieldWidget3(
                                                width: 344,
                                                labelText: 'Date',
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          width: 400,
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                    horizontal: 20)
                                                .copyWith(right: 35),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                AdminTextFieldWidget3(
                                                  width: 165,
                                                  labelText: 'Close Time',
                                                ),
                                                AdminTextFieldWidget3(
                                                  width: 165,
                                                  labelText: 'Start Time',
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
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
                          color: whiteColor2,
                          border: Border.all(color: blueColor2),
                          borderRadius: BorderRadius.circular(24)),
                      child: Text(
                        'Add Live House',
                        style: TextStyle(
                            color: blueColor2,
                            letterSpacing: 0.5,
                            fontSize: 11,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ))
            ],
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
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    text.length,
                    (index) => Container(
                          alignment: Alignment.center,
                          width: 120,
                          child: Text(
                            text[index],
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        )),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorConstant.whiteColor
                // color: ColorConstant.whiteColor,
                ),
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    // flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        text2.length,
                        (index) => Container(
                          alignment: Alignment.center,
                          width: 120,
                          child: Text(
                            text2[index],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ),
                        growable: true,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    width: 120,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 30),
                        Icon(Icons.edit, color: ColorConstant.blueColor),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.delete, color: ColorConstant.blueColor),
                      ],
                    ),
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
