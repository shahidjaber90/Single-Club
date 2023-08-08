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
            width: MediaQuery.of(context).size.width * 0.80,
            color: ColorConstant.whiteColor,
            child: Column(
              children: [
                // User Active Deactive Details Buttons end
                Container(
                  color: ColorConstant.whiteColor,
                  alignment: Alignment.topLeft,
                  height: 650,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // button Complain
                        Row(
                          children: [
                            Container(
                              height: 155,
                              width: MediaQuery.of(context).size.width * 0.80,
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
                                  // Padding(
                                  //   padding: const EdgeInsets.only(bottom: 20),
                                  //   child: Container(
                                  //     alignment: Alignment.center,
                                  //     height: 40,
                                  //     width: 210,
                                  //     child: TextFormField(
                                  //       decoration: InputDecoration(
                                  //           border: OutlineInputBorder(
                                  //             borderSide: BorderSide.none,
                                  //             borderRadius:
                                  //                 BorderRadius.circular(20),
                                  //           ),
                                  //           fillColor:
                                  //               ColorConstant.searchColor,
                                  //           filled: true,
                                  //           prefixIcon: Icon(Icons.search),
                                  //           hintText: 'Search...'),
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //
                        Container(
                          height: 600,
                          width: MediaQuery.of(context).size.width * 0.79,
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
                                      width: 80.0,
                                      headingText: 'Document'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 170.0,
                                      headingText: 'Date/Time'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 82.0,
                                      headingText: 'Status'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 120.0,
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
                                        0.79,
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
                                            width: 90.0,
                                            headingText: 'KingOfKings'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 70.0,
                                            headingText: '784575'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 80.0,
                                            headingText: 'Host'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 100.0,
                                            headingText: '01765486524'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 200.0,
                                            headingText:
                                                'Hatespeech@gmail.com'),
                                        SizedBox(
                                          width: 80,
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
                                            width: 170.0,
                                            headingText:
                                                '14-Feb 1994 09:45 PM'),
                                        Column(
                                          children: [
                                            Image.asset('assets/icons/off.png'),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Image.asset('assets/icons/on.png'),
                                          ],
                                        ),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 120.0,
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
