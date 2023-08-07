import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/alertButton.dart';
import 'package:singleclub/Widgets/dataHeadingWidget.dart';
import 'package:singleclub/Widgets/dropdown_widget.dart';
import 'package:singleclub/Widgets/textfield_heading.dart';
import 'package:singleclub/Widgets/textfield_widget2.dart';
import 'package:web_pagination/web_pagination.dart';

class MediaPage extends StatefulWidget {
  const MediaPage({super.key});

  @override
  State<MediaPage> createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> {
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
                        // button Complain
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
                                      padding:
                                          const EdgeInsets.only(bottom: 20),
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 35,
                                            width: 260,
                                          ),
                                          //firstButton
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
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                height: 32,
                                                                width: 410,
                                                                color: ColorConstant
                                                                    .blueColor,
                                                                child: Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      bottom: 6,
                                                                      right:
                                                                          10),
                                                                  child: IconButton(
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
                                                                                whiteColor = Color(0xff2C50ED);
                                                                              });
                                                                        Navigator.pop(
                                                                            context);
                                                                      },
                                                                      icon: Icon(
                                                                        Icons
                                                                            .close,
                                                                        color: ColorConstant
                                                                            .whiteColor,
                                                                      )),
                                                                ),
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
                                            //// alert dialog end
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: 120,
                                              height: 32,
                                              decoration: BoxDecoration(
                                                  color: whiteColor,
                                                  border: Border.all(
                                                      color: blueColor),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Text(
                                                'Post',
                                                style: TextStyle(
                                                    color: blueColor,
                                                    letterSpacing: 0.5,
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 90,
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: 120,
                                              height: 32,
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.whiteColor,
                                                  border: Border.all(
                                                      color: ColorConstant
                                                          .blueColor),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Text(
                                                'SMS',
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.blueColor,
                                                    letterSpacing: 0.5,
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                          )
                                        ],
                                      )),
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
                                      width: 90.0,
                                      headingText: 'User Name'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 90.0,
                                      headingText: 'Id Number'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 100.0,
                                      headingText: 'Type'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 90.0,
                                      headingText: 'Country'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 90.0,
                                      headingText: 'Check'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 100.0,
                                      headingText: 'Date/Time'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 80.0,
                                      headingText: 'Decision'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 60.0,
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
                                            width: 100.0,
                                            headingText: 'KingOfKings'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 120.0,
                                            headingText: '784575'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 130.0,
                                            headingText: 'Video'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 150.0,
                                            headingText: 'Bangladesh'),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 20,
                                          width: 84,
                                          decoration: BoxDecoration(
                                            color: ColorConstant.blueColor,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          child: Text(
                                            'Open',
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.whiteColor),
                                          ),
                                        ),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 160.0,
                                            headingText:
                                                '14 Feb 1994 09:45 PM'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 80.0,
                                            headingText: 'Name'),
                                        Row(
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
