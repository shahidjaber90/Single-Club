import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/dataHeadingWidget.dart';
import 'package:web_pagination/web_pagination.dart';

class MediaPage extends StatefulWidget {
  const MediaPage({super.key});

  @override
  State<MediaPage> createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> {
  bool tap1 = false;
  bool tap2 = false;
  Color whiteColor = (Colors.white);
  Color blueColor = const Color(0xff2C50ED);
  Color whiteColor2 = (Colors.white);
  Color blueColor2 = const Color(0xff2C50ED);

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
                                            child: GestureDetector(
                                              onTap: () {
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
                                                        blueColor2 =
                                                            Colors.white;
                                                        whiteColor2 =
                                                            Color(0xff2C50ED);
                                                      });

                                                showDialog(
                                                  barrierDismissible: false,
                                                  context: context,
                                                  builder: (context) =>
                                                      AlertDialog(
                                                    scrollable: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    elevation: 0,
                                                    actions: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(20.0),
                                                        child: Container(
                                                          width: 400,
                                                          height: 601,
                                                          color: ColorConstant
                                                              .whiteColor,
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              children: [
                                                                Container(
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
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        "SMS",
                                                                        style: GoogleFonts.poppins(
                                                                            color: ColorConstant
                                                                                .whiteColor,
                                                                            fontSize:
                                                                                30,
                                                                            fontWeight:
                                                                                FontWeight.w600),
                                                                      ),
                                                                      IconButton(
                                                                        onPressed:
                                                                            () {
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
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                        icon: const Icon(
                                                                            Icons.close),
                                                                        color: ColorConstant
                                                                            .whiteColor,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),

                                                                /// SMS body Start
                                                                Container(
                                                                  width: 400,
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsets.symmetric(
                                                                            horizontal:
                                                                                20)
                                                                        .copyWith(
                                                                            top:
                                                                                20),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            Image.asset('assets/icons/Back.png'),
                                                                            const SizedBox(width: 15),
                                                                            Image.asset('assets/icons/chatUser.png'),
                                                                            const SizedBox(width: 10),
                                                                            Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Martha Craig',
                                                                                  style: GoogleFonts.yantramanav(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.black),
                                                                                ),
                                                                                Text(
                                                                                  'Messenger',
                                                                                  style: GoogleFonts.yantramanav(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.40)),
                                                                                ),
                                                                              ],
                                                                            )
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Image.asset('assets/icons/Call.png'),
                                                                            const SizedBox(width: 15),
                                                                            Image.asset('assets/icons/Video Call.png'),
                                                                          ],
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: 400,
                                                                  height: 150,
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsets.symmetric(
                                                                            horizontal:
                                                                                20)
                                                                        .copyWith(
                                                                            top:
                                                                                20),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Container(
                                                                          height:
                                                                              150,
                                                                          width:
                                                                              200,
                                                                          decoration:
                                                                              BoxDecoration(image: DecorationImage(image: AssetImage('assets/icons/post.png'), fit: BoxFit.fill)),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              80,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.end,
                                                                            children: [
                                                                              Image.asset('assets/icons/sender2.png'),
                                                                            ],
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: 400,
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsets
                                                                            .symmetric(
                                                                        horizontal:
                                                                            20),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                            ''),
                                                                        Text(
                                                                          '21:32',
                                                                          style: GoogleFonts.yantramanav(
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.w500,
                                                                              color: Colors.black.withOpacity(0.40)),
                                                                        ),
                                                                        Text(
                                                                            ''),
                                                                        Text(
                                                                          'ID: 784575',
                                                                          style: GoogleFonts.poppins(
                                                                              fontSize: 14,
                                                                              fontWeight: FontWeight.w400),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),

                                                                ///

                                                                Container(
                                                                  width: 400,
                                                                  // height: 150,
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsets.symmetric(
                                                                            horizontal:
                                                                                20)
                                                                        .copyWith(
                                                                            top:
                                                                                20),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                          height:
                                                                              50,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Image.asset('assets/icons/sender1.png'),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        const SizedBox(
                                                                            width:
                                                                                10),
                                                                        Container(
                                                                          height:
                                                                              41,
                                                                          width:
                                                                              198,
                                                                          decoration:
                                                                              BoxDecoration(image: DecorationImage(image: AssetImage('assets/icons/voice.png'), fit: BoxFit.fill)),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  width: 400,
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsets
                                                                            .symmetric(
                                                                        horizontal:
                                                                            20),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          'ID: 784575',
                                                                          style: GoogleFonts.poppins(
                                                                              fontSize: 14,
                                                                              fontWeight: FontWeight.w400),
                                                                        ),
                                                                        Text(
                                                                            ''),
                                                                        Text(
                                                                            ''),
                                                                        Text(
                                                                            ''),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),

                                                                /// again user

                                                                Container(
                                                                  width: 400,
                                                                  height: 150,
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsets
                                                                            .symmetric(
                                                                        horizontal:
                                                                            20),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Container(
                                                                          height:
                                                                              150,
                                                                          width:
                                                                              200,
                                                                          decoration:
                                                                              BoxDecoration(image: DecorationImage(image: AssetImage('assets/icons/post.png'), fit: BoxFit.fill)),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              80,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.end,
                                                                            children: [
                                                                              Image.asset('assets/icons/sender2.png'),
                                                                            ],
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: 400,
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsets
                                                                            .symmetric(
                                                                        horizontal:
                                                                            20),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                            ''),
                                                                        Text(
                                                                          '21:32',
                                                                          style: GoogleFonts.yantramanav(
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.w500,
                                                                              color: Colors.black.withOpacity(0.40)),
                                                                        ),
                                                                        Text(
                                                                            ''),
                                                                        Text(
                                                                          'ID: 784575',
                                                                          style: GoogleFonts.poppins(
                                                                              fontSize: 14,
                                                                              fontWeight: FontWeight.w400),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: 400,
                                                                  // height: 150,
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsets
                                                                            .symmetric(
                                                                        horizontal:
                                                                            20),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Container(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          // height:
                                                                          //     150,
                                                                          width:
                                                                              200,
                                                                          child:
                                                                              Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                'Hello, Jacob!',
                                                                                style: GoogleFonts.yantramanav(fontSize: 17, fontWeight: FontWeight.w600),
                                                                              ),
                                                                              Text(
                                                                                'How are you doing?',
                                                                                style: GoogleFonts.yantramanav(fontSize: 17, fontWeight: FontWeight.w600),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          // height:
                                                                          //     80,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.end,
                                                                            children: [
                                                                              Image.asset('assets/icons/sender2.png'),
                                                                            ],
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: 400,
                                                                  // height: 150,
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsets
                                                                            .symmetric(
                                                                        horizontal:
                                                                            20),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                          // height:
                                                                          //     80,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Image.asset('assets/icons/sender2.png'),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          // height:
                                                                          //     150,
                                                                          width:
                                                                              200,
                                                                          child:
                                                                              Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                'Hello, Jacob!',
                                                                                style: GoogleFonts.yantramanav(fontSize: 17, fontWeight: FontWeight.w600),
                                                                              ),
                                                                              Text(
                                                                                'How are you doing?',
                                                                                style: GoogleFonts.yantramanav(fontSize: 17, fontWeight: FontWeight.w600),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),

                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .symmetric(
                                                                      horizontal:
                                                                          20),
                                                                  child: Row(
                                                                    children: [
                                                                      Text(
                                                                        'ID: 784575',
                                                                        style: GoogleFonts.poppins(
                                                                            fontSize:
                                                                                14,
                                                                            fontWeight:
                                                                                FontWeight.w400),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .symmetric(
                                                                      horizontal:
                                                                          20,
                                                                      vertical:
                                                                          10),
                                                                  child:
                                                                      Container(
                                                                    width: 400,
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              290,
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Image.asset('assets/icons/Gallery.png'),
                                                                              Image.asset('assets/icons/Audio.png'),
                                                                              Image.asset('assets/icons/image 5.png'),
                                                                              Container(
                                                                                alignment: Alignment.center,
                                                                                height: 36,
                                                                                width: 157,
                                                                                child: TextField(
                                                                                  textAlign: TextAlign.center,
                                                                                  textAlignVertical: TextAlignVertical.center,
                                                                                  decoration: InputDecoration(fillColor: ColorConstant.arrowColor.withOpacity(0.60), filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none)),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Image.asset('assets/icons/Like.png'),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                )

                                                                /// SMS Boy End
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                              child: Container(
                                                alignment: Alignment.center,
                                                width: 120,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                    color: whiteColor2,
                                                    border: Border.all(
                                                        color: blueColor2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: Text(
                                                  'SMS',
                                                  style: TextStyle(
                                                      color: blueColor2,
                                                      letterSpacing: 0.5,
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
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
