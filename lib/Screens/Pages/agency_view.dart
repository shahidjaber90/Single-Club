import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/userDetailsData.dart';
import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/chipField_widget.dart';
import 'package:singleclub/Widgets/dataHeadingWidget.dart';
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
  List<Color> itemColors =
      List.generate(dailyDetails.length, (index) => Colors.white);
  List<Color> contentColors =
      List.generate(dailyDetails.length, (index) => Colors.black);
  int? lastIndex = 0;

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
                                        GestureDetector(
                                          onTap: () {
                                            showDialog(
                                              barrierDismissible: false,
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  elevation: 0,
                                                  content: Container(
                                                    color: ColorConstant
                                                        .whiteColor,
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height: 52,
                                                          width: 400,
                                                          color: ColorConstant
                                                              .blueColor,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(''),
                                                              Text(
                                                                'Looking Glass Agency',
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        28,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: ColorConstant
                                                                        .whiteColor),
                                                              ),
                                                              IconButton(
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.pop(
                                                                        context);
                                                                  },
                                                                  icon: Icon(
                                                                    Icons.close,
                                                                    color: ColorConstant
                                                                        .whiteColor,
                                                                  ))
                                                            ],
                                                          ),
                                                        ),
                                                        // daily monthly
                                                        Container(
                                                          height: 40,
                                                          width: 400,
                                                          child: Expanded(
                                                            child: Row(
                                                              children: [
                                                                Expanded(
                                                                  child: ListView
                                                                      .builder(
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        dailyDetails
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            index) {
                                                                      return Padding(
                                                                        padding:
                                                                            const EdgeInsets.symmetric(
                                                                          vertical:
                                                                              10,
                                                                          // horizontal:
                                                                        ),
                                                                        child: GestureDetector(
                                                                            onTap: () {
                                                                              setState(() {
                                                                                itemColors[index] = ColorConstant.blueColor;
                                                                                contentColors[index] = ColorConstant.whiteColor;

                                                                                if (lastIndex != null && lastIndex != index) {
                                                                                  itemColors[lastIndex!] = ColorConstant.whiteColor;
                                                                                  contentColors[lastIndex!] = Colors.black;
                                                                                }
                                                                                lastIndex = index;
                                                                              });

                                                                              print(dailyDetails[index]);
                                                                            },
                                                                            child: Container(
                                                                              alignment: Alignment.center,
                                                                              height: 40,
                                                                              width: 80,
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(8),
                                                                                color: itemColors[index],
                                                                              ),
                                                                              child: Text(
                                                                                '${dailyDetails[index]}',
                                                                                style: GoogleFonts.poppins(color: contentColors[index], fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.5),
                                                                              ),
                                                                            )),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      10),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Container(
                                                                width: 130,
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .blueColor,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            2)),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceAround,
                                                                  children: [
                                                                    Text(
                                                                      'Total',
                                                                      style:
                                                                          TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteColor,
                                                                        fontSize:
                                                                            12,
                                                                      ),
                                                                    ),
                                                                    Image.asset(
                                                                        'assets/icons/kohenoor.png'),
                                                                    Text(
                                                                      '54254 M',
                                                                      style:
                                                                          TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteColor,
                                                                        letterSpacing:
                                                                            1,
                                                                        fontSize:
                                                                            12,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height: 5),
                                                        Container(
                                                          width: 400,
                                                          height: 450,
                                                          child: ListView
                                                              .builder(
                                                            itemCount:
                                                                agencyList
                                                                    .length,
                                                            itemBuilder:
                                                                (context,
                                                                    index) {
                                                              return Padding(
                                                                padding: const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        6,
                                                                    vertical:
                                                                        4),
                                                                child:
                                                                    Container(
                                                                  width: 400,
                                                                  height: 50,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: ColorConstant
                                                                        .whiteColor,
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        color:
                                                                            ColorConstant.arrowColor,
                                                                        blurRadius:
                                                                            2.0, // soften the shadow
                                                                        spreadRadius:
                                                                            1.0, //extend the shadow
                                                                        // offset:
                                                                        //     Offset(
                                                                        //   5.0, // Move to right 5  horizontally
                                                                        //   5.0, // Move to bottom 5 Vertically
                                                                        // ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsets
                                                                            .symmetric(
                                                                        horizontal:
                                                                            10),
                                                                    child:
                                                                        Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment.spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment.center,
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              agencyList[index]['id'],
                                                                              style: GoogleFonts.inter(
                                                                                fontSize: 14,
                                                                                fontWeight: FontWeight.w700,
                                                                              ),
                                                                            ),
                                                                            const SizedBox(
                                                                              width: 8,
                                                                            ),
                                                                            Image.asset(agencyList[index]['profile']),
                                                                            const SizedBox(
                                                                              width: 8,
                                                                            ),
                                                                            Text(
                                                                              agencyList[index]['text'],
                                                                              style: GoogleFonts.inter(
                                                                                fontSize: 15,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                            ),
                                                                            Image.asset(agencyList[index]['img']),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Image.asset(agencyList[index]['img2']),
                                                                            const SizedBox(width: 4),
                                                                            Text(
                                                                              agencyList[index]['reward'],
                                                                              style: GoogleFonts.inter(
                                                                                fontSize: 14,
                                                                                fontWeight: FontWeight.w700,
                                                                              ),
                                                                            ),
                                                                            PopupMenuButton(
                                                                                itemBuilder: (context) => [
                                                                                      PopupMenuItem(
                                                                                          height: 20,
                                                                                          child: Text(
                                                                                            'Remove',
                                                                                            style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.black),
                                                                                          )),
                                                                                      PopupMenuItem(
                                                                                          height: 20,
                                                                                          child: Text(
                                                                                            'Tax Hold',
                                                                                            style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
                                                                                          )),
                                                                                      PopupMenuItem(
                                                                                          height: 20,
                                                                                          child: Text(
                                                                                            'Witdraw Frieze',
                                                                                            style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
                                                                                          )),
                                                                                    ]),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: DataHeadingWidget(
                                              height: 24.0,
                                              width: 180.0,
                                              headingText:
                                                  'Looking Glass Agency'),
                                        ),
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
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            DataHeadingWidget(
                                                height: 24.0,
                                                width: 80.0,
                                                headingText: 'Active'),
                                            PopupMenuButton(
                                                itemBuilder: (context) => [
                                                      PopupMenuItem(
                                                          height: 20,
                                                          child: Text(
                                                            'Ban',
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        13,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .black),
                                                          )),
                                                      PopupMenuItem(
                                                          height: 20,
                                                          child: Text(
                                                            'Active',
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .black),
                                                          )),
                                                      PopupMenuItem(
                                                          height: 20,
                                                          child: Text(
                                                            'Tax Hold',
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .black),
                                                          )),
                                                      PopupMenuItem(
                                                          height: 20,
                                                          child: Text(
                                                            'Name Change',
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .black),
                                                          )),
                                                    ]),
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
