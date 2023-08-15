import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/dataHeadingWidget.dart';
import 'package:web_pagination/web_pagination.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  bool tap1 = false;
  bool tap3 = false;
  Color whiteColor = (Colors.white);
  Color blueColor = const Color(0xff2C50ED);
  Color whiteColor3 = (Colors.white);
  Color blueColor3 = const Color(0xff2C50ED);
  bool isSwitched = false;
  var textValue = '';
  bool isSwitched2 = false;

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Active';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Ban';
      });
      print('Switch Button is OFF');
    }
  }

  void toggleSwitch2(bool value) {
    if (isSwitched2 == false) {
      setState(() {
        isSwitched2 = true;
        textValue = 'Active';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched2 = false;
        textValue = 'Ban';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Center Page Content
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.98,
            width: MediaQuery.of(context).size.width * 0.76,
            color: ColorConstant.whiteColor,
            child: Column(
              children: [
                // User Active Deactive Details Buttons end
                Container(
                  color: ColorConstant.whiteColor,
                  alignment: Alignment.topLeft,
                  height: 650,
                  width: MediaQuery.of(context).size.width * 0.76,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // button Complain
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: MediaQuery.of(context).size.width * 0.76,
                            ),
                          ],
                        ),
                        //
                        Container(
                          height: 600,
                          width: MediaQuery.of(context).size.width * 0.76,
                          color: ColorConstant.searchColor,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 90.0,
                                      headingText: ' Name'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 70.0,
                                      headingText: 'Id Serial'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 80.0,
                                      headingText: 'Category'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 100.0,
                                      headingText: 'Mobile'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 200.0,
                                      headingText: 'Email'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 76.0,
                                      headingText: 'Document'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 160.0,
                                      headingText: 'Date/Time'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 82.0,
                                      headingText: 'Status'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 110.0,
                                      headingText: 'Decision'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 70.0,
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
                                        0.758,
                                    height: 85,
                                    color: ColorConstant.whiteColor,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 88.0,
                                            headingText: 'KingOfKings'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 70.0,
                                            headingText: '784575'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 76.0,
                                            headingText: 'Host'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 98.0,
                                            headingText: '01765486524'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 200.0,
                                            headingText:
                                                'Hatespeech@gmail.com'),
                                        SizedBox(
                                          width: 76,
                                          child: GestureDetector(
                                            ///////////////
                                            onTap: () {
                                              showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return AlertDialog(
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      elevation: 0,
                                                      content: Container(
                                                          height: 480,
                                                          width: 410,
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .whiteColor,
                                                              border: Border.all(
                                                                  width: 2,
                                                                  color: ColorConstant
                                                                      .blueColor)),
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                height: 26,
                                                                width: 410,
                                                                color: ColorConstant
                                                                    .blueColor,
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets
                                                                            .symmetric(
                                                                        horizontal:
                                                                            31)
                                                                    .copyWith(
                                                                        top:
                                                                            40),
                                                                child:
                                                                    Container(
                                                                  height: 288,
                                                                  width: 400,
                                                                  decoration: BoxDecoration(
                                                                      image: DecorationImage(
                                                                          image:
                                                                              AssetImage('assets/images/complain.png'))),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        8),
                                                                child:
                                                                    Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  // height: 288,
                                                                  width: 380,
                                                                  child: Text(
                                                                    'Music Time With My Chill ModMusic Time \nWith My Chill ModMusic Time With My Chill Mod',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: GoogleFonts.poppins(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w300,
                                                                        letterSpacing:
                                                                            0.5),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          )),
                                                    );
                                                  });
                                            },

                                            ///////////////
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 24,
                                              width: 55,
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.blueColor,
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Text(
                                                'Check',
                                                style: GoogleFonts.aBeeZee(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w300,
                                                    color: ColorConstant
                                                        .whiteColor),
                                              ),
                                            ),
                                          ),
                                        ),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 160.0,
                                            headingText:
                                                '14-Feb 1994 09:45 PM'),
                                        Column(
                                          children: [
                                            Container(
                                              height: 24,
                                              width: 38,
                                              decoration: BoxDecoration(
                                                  color: ColorConstant
                                                      .arrowColor
                                                      .withOpacity(0.70),
                                                  border: Border.all(
                                                      color: isSwitched
                                                          ? Colors.red
                                                          : ColorConstant
                                                              .blueColor),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 4),
                                                child: Transform.scale(
                                                    scale: 1,
                                                    child: Switch(
                                                      onChanged: toggleSwitch,
                                                      value: isSwitched,
                                                      activeColor:
                                                          Colors.red.shade800,
                                                      activeTrackColor:
                                                          Colors.white,
                                                      inactiveThumbColor:
                                                          ColorConstant
                                                              .blueColor,
                                                      inactiveTrackColor:
                                                          Colors.white,
                                                    )),
                                              ),
                                            ),
                                            // two
                                            Container(
                                              height: 24,
                                              width: 38,
                                              decoration: BoxDecoration(
                                                  color: ColorConstant
                                                      .arrowColor
                                                      .withOpacity(0.70),
                                                  border: Border.all(
                                                      color: isSwitched2
                                                          ? Colors.red
                                                          : ColorConstant
                                                              .blueColor),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 4),
                                                child: Transform.scale(
                                                    scale: 1,
                                                    child: Switch(
                                                      onChanged: toggleSwitch2,
                                                      value: isSwitched2,
                                                      activeColor:
                                                          Colors.red.shade800,
                                                      activeTrackColor:
                                                          Colors.white,
                                                      inactiveThumbColor:
                                                          ColorConstant
                                                              .blueColor,
                                                      inactiveTrackColor:
                                                          Colors.white,
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 110.0,
                                            headingText: 'Admin name'),
                                        SizedBox(
                                          width: 80,
                                          child: Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.edit,
                                                    color:
                                                        ColorConstant.blueColor,
                                                  )),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.delete,
                                                    color:
                                                        ColorConstant.blueColor,
                                                  ))
                                            ],
                                          ),
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
