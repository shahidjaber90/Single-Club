import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/alertButton.dart';
import 'package:singleclub/Widgets/chipField_widget.dart';
import 'package:singleclub/Widgets/dataHeadingWidget.dart';
import 'package:singleclub/Widgets/dropdown_widget.dart';
import 'package:singleclub/Widgets/textfield_heading.dart';
import 'package:singleclub/Widgets/textfield_widget2.dart';
import 'package:web_pagination/web_pagination.dart';

class AgencyPage extends StatefulWidget {
  const AgencyPage({super.key});

  @override
  State<AgencyPage> createState() => _AgencyPageState();
}

class _AgencyPageState extends State<AgencyPage> {
  bool tap1 = false;
  Color whiteColor = (Colors.white);
  Color blueColor = const Color(0xff2C50ED);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Center Page Content
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.98,
            width: MediaQuery.of(context).size.width * 0.748,
            color: ColorConstant.whiteColor,
            child: Column(
              children: [
                // User Active Deactive Details Buttons end
                Container(
                  color: ColorConstant.whiteColor,
                  alignment: Alignment.topLeft,
                  height: 650,
                  width: MediaQuery.of(context).size.width * 0.748,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 155,
                              width: MediaQuery.of(context).size.width * 0.748,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 360,
                                          height: 35,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            tap1
                                                ? setState(() {
                                                    tap1 = !tap1;
                                                    whiteColor = Colors.white;
                                                    blueColor =
                                                        Color(0xff2C50ED);
                                                  })
                                                : setState(() {
                                                    tap1 = !tap1;
                                                    blueColor = Colors.white;
                                                    whiteColor =
                                                        Color(0xff2C50ED);
                                                  });

                                            showDialog(
                                              barrierDismissible: false,
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  scrollable: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  elevation: 0,
                                                  title: Container(
                                                    width: 300,
                                                    height: 450,
                                                    decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .whiteColor,
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          // height: 53,
                                                          // width: double.infinity,
                                                          color: ColorConstant
                                                              .blueColor,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                // textAlign: TextAlign.center,
                                                                "Commission",
                                                                style: GoogleFonts.poppins(
                                                                    color: ColorConstant
                                                                        .whiteColor,
                                                                    fontSize:
                                                                        30,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              ),
                                                              const SizedBox(
                                                                width: 60,
                                                              ),
                                                              IconButton(
                                                                onPressed: () {
                                                                  tap1
                                                                      ? setState(
                                                                          () {
                                                                          tap1 =
                                                                              !tap1;
                                                                          whiteColor =
                                                                              Colors.white;
                                                                          blueColor =
                                                                              Color(0xff2C50ED);
                                                                        })
                                                                      : setState(
                                                                          () {
                                                                          tap1 =
                                                                              !tap1;
                                                                          blueColor =
                                                                              Colors.white;
                                                                          whiteColor =
                                                                              Color(0xff2C50ED);
                                                                        });
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                icon: const Icon(
                                                                    Icons
                                                                        .close),
                                                                color: ColorConstant
                                                                    .whiteColor,
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          height: 405,
                                                          color: ColorConstant
                                                              .whiteColor,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Column(
                                                              // mainAxisAlignment:
                                                              //     MainAxisAlignment
                                                              //         .spaceEvenly,
                                                              children: [
                                                                // Button
                                                                const SizedBox(
                                                                    height: 20),
                                                                Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  height: 30,
                                                                  width: 140,
                                                                  decoration: BoxDecoration(
                                                                      color: ColorConstant
                                                                          .blueColor,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              24)),
                                                                  child: Text(
                                                                    'Commission',
                                                                    style: GoogleFonts.dmSans(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700,
                                                                        letterSpacing:
                                                                            0.5,
                                                                        color: ColorConstant
                                                                            .whiteColor),
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                    height: 40),

                                                                /// chip one
                                                                Container(
                                                                  width: 350,
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      ChipFieldWidget(
                                                                          hintText:
                                                                              'Target Coin.'),
                                                                      ChipFieldWidget(
                                                                          hintText:
                                                                              'Commission %'),
                                                                    ],
                                                                  ),
                                                                ),

                                                                /// chip two
                                                                const SizedBox(
                                                                    height: 10),
                                                                Container(
                                                                  width: 350,
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      ChipFieldWidget(
                                                                          hintText:
                                                                              'Target Coin.'),
                                                                      ChipFieldWidget(
                                                                          hintText:
                                                                              'Commission %'),
                                                                    ],
                                                                  ),
                                                                ),

                                                                /// chip three
                                                                const SizedBox(
                                                                    height: 10),
                                                                Container(
                                                                  width: 350,
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      ChipFieldWidget(
                                                                          hintText:
                                                                              'Target Coin.'),
                                                                      ChipFieldWidget(
                                                                          hintText:
                                                                              'Commission %'),
                                                                    ],
                                                                  ),
                                                                ),

                                                                /// chip four
                                                                const SizedBox(
                                                                    height: 10),
                                                                Container(
                                                                  width: 350,
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      ChipFieldWidget(
                                                                          hintText:
                                                                              'Target Coin.'),
                                                                      ChipFieldWidget(
                                                                          hintText:
                                                                              'Commission %'),
                                                                    ],
                                                                  ),
                                                                ),
                                                                // add button
                                                                const SizedBox(
                                                                    height: 40),
                                                                Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  height: 36,
                                                                  width: 110,
                                                                  decoration: BoxDecoration(
                                                                      color: ColorConstant
                                                                          .blueColor,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6)),
                                                                  child: Text(
                                                                    'Add',
                                                                    style: GoogleFonts.dmSans(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700,
                                                                        letterSpacing:
                                                                            0.5,
                                                                        color: ColorConstant
                                                                            .whiteColor),
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  height: 20,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          //// alert dialog end
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 140,
                                            height: 32,
                                            decoration: BoxDecoration(
                                                color: whiteColor,
                                                border: Border.all(
                                                    color: blueColor),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Text(
                                              'Commission',
                                              style: TextStyle(
                                                  color: blueColor,
                                                  letterSpacing: 0.5,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ),

                                        /// third button
                                        Positioned(
                                          left: 220,
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 140,
                                            height: 32,
                                            decoration: BoxDecoration(
                                                color: ColorConstant.whiteColor,
                                                border: Border.all(
                                                    color: ColorConstant
                                                        .blueColor),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Text(
                                              'Panisniment',
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.blueColor,
                                                  letterSpacing: 1,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ),

                                        /// second button
                                        Positioned(
                                          left: 115,
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 130,
                                            height: 32,
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blueColor,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Text(
                                              'Reward',
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.whiteColor,
                                                  letterSpacing: 1,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 40,
                                      width: 210,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            fillColor:
                                                ColorConstant.searchColor,
                                            filled: true,
                                            prefixIcon: Icon(Icons.search),
                                            hintText: 'Search...'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //
                        Container(
                          height: 600,
                          color: ColorConstant.searchColor,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 180.0,
                                      headingText: 'Agency'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 120.0,
                                      headingText: 'Id Number'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 70.0,
                                      headingText: 'Host'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 90.0,
                                      headingText: 'Received'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 100.0,
                                      headingText: 'Commission'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 100.0,
                                      headingText: 'Profit'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 160.0,
                                      headingText: 'Date/Time'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 80.0,
                                      headingText: 'Decision'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 80.0,
                                      headingText: 'Action'),
                                ],
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              // first details user
                              Row(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.748,
                                    height: 55,
                                    color: ColorConstant.whiteColor,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 180.0,
                                            headingText:
                                                'Looking Glass Agency'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 120.0,
                                            headingText: '784575'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 70.0,
                                            headingText: '124'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 90.0,
                                            headingText: '578456'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 100.0,
                                            headingText: '10%'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 100.0,
                                            headingText: '578456'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 160.0,
                                            headingText: '14 Feb 23 10:45 PM'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 80.0,
                                            headingText: 'Name'),
                                        Column(
                                          children: [
                                            DataHeadingWidget(
                                                height: 24.0,
                                                width: 80.0,
                                                headingText: 'Active'),
                                            DataHeadingWidget(
                                                height: 24.0,
                                                width: 80.0,
                                                headingText: 'Ban'),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              //
                            ],
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // pagination
                            WebPaginationWidget(
                              actualPage: 2,
                              countToDisplay: 3,
                              totalPages: 3,
                              buttonColor: ColorConstant.blueColor,
                              buttonTextColor: Colors.white,
                              onPageChange: (page) {
                                // setState(() {
                                //   actualPage = page;
                                // });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
