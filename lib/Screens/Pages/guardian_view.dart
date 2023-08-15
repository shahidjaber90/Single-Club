import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/dropdown_widget.dart';
import 'package:singleclub/Widgets/textfield_heading.dart';
import 'package:singleclub/Widgets/textfield_widget.dart';
import 'package:singleclub/Widgets/textwidget.dart';
import 'package:web_pagination/web_pagination.dart';

class GuardianView extends StatefulWidget {
  const GuardianView({super.key});

  @override
  State<GuardianView> createState() => _GuardianViewState();
}

class _GuardianViewState extends State<GuardianView> {
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
            height: MediaQuery.of(context).size.height * 0.96,
            width: MediaQuery.of(context).size.width * 0.748,
            color: ColorConstant.searchColor,
            child: Column(
              children: [
                // button VIP
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 32,
                                width: 400,
                              ),
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
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        scrollable: true,
                                        backgroundColor: Colors.transparent,
                                        elevation: 0,
                                        title: Container(
                                          width: 400,
                                          decoration: BoxDecoration(
                                              color: ColorConstant.blueColor,
                                              border: Border.all(
                                                  color:
                                                      ColorConstant.blueColor,
                                                  width: 2)),
                                          child: Column(
                                            children: [
                                              Container(
                                                color: ColorConstant.blueColor,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "",
                                                      style: GoogleFonts.poppins(
                                                          color: ColorConstant
                                                              .whiteColor,
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    Text(
                                                      "Add Guardian",
                                                      style: GoogleFonts.poppins(
                                                          color: ColorConstant
                                                              .whiteColor,
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    IconButton(
                                                      onPressed: () {
                                                        tap1
                                                            ? setState(() {
                                                                tap1 = !tap1;
                                                                whiteColor =
                                                                    Colors
                                                                        .white;
                                                                blueColor = Color(
                                                                    0xff2C50ED);
                                                              })
                                                            : setState(() {
                                                                tap1 = !tap1;
                                                                blueColor =
                                                                    Colors
                                                                        .white;
                                                                whiteColor = Color(
                                                                    0xff2C50ED);
                                                              });
                                                        Navigator.pop(context);
                                                      },
                                                      icon: const Icon(
                                                          Icons.close),
                                                      color: ColorConstant
                                                          .whiteColor,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 400,
                                                color: ColorConstant.whiteColor,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      // 1
                                                      DropdownWidget(
                                                          items: guardianList,
                                                          selectItem:
                                                              'Select Guardian',
                                                          title: 'Guardian'),
                                                      // 4
                                                      DropdownWidget(
                                                          items: selectDays,
                                                          selectItem:
                                                              'Select Days',
                                                          title: 'Day'),
                                                      // 5
                                                      TextFieldHeadnig(
                                                          headingText: 'Price'),
                                                      TextFieldWidget(
                                                          labelText: 'Coin'),
                                                      /////////////////////////////// line 7

                                                      //
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 16),
                                                        child: Row(
                                                          children: [
                                                            SvgPicture.asset(
                                                                'assets/svg/listitem/entrance_effect.svg')
                                                          ],
                                                        ),
                                                      ),
                                                      DropdownWidget4(
                                                          items:
                                                              selectCategorys,
                                                          selectItem:
                                                              'Select Entry'),
                                                      //
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 16),
                                                        child: Row(
                                                          children: [
                                                            SvgPicture.asset(
                                                                'assets/svg/listitem/chat_bubbles.svg')
                                                          ],
                                                        ),
                                                      ),
                                                      DropdownWidget4(
                                                          items:
                                                              selectCategorys,
                                                          selectItem:
                                                              'Select Bubble Chat'),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 16),
                                                        child: Row(
                                                          children: [
                                                            SvgPicture.asset(
                                                                'assets/svg/listitem/medal.svg')
                                                          ],
                                                        ),
                                                      ),
                                                      DropdownWidget4(
                                                          items:
                                                              selectCategorys,
                                                          selectItem:
                                                              'Select Logo'),
                                                      //
                                                      DropdownWidget6(
                                                        hintText:
                                                            'Select Power',
                                                      ),
                                                      const SizedBox(
                                                          height: 18),

                                                      ///
                                                      ///
                                                      const SizedBox(
                                                          height: 18),

                                                      // Button
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 12),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            GestureDetector(
                                                              onTap: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              child: Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                height: 30,
                                                                width: 111,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: ColorConstant
                                                                      .blueColor,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4),
                                                                ),
                                                                child: Text(
                                                                  'Add',
                                                                  style: GoogleFonts.poppins(
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color: ColorConstant
                                                                          .whiteColor),
                                                                ),
                                                              ),
                                                            ),
                                                            // save
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
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
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 138,
                                  height: 32,
                                  decoration: BoxDecoration(
                                      color: whiteColor,
                                      border: Border.all(color: blueColor),
                                      borderRadius: BorderRadius.circular(24)),
                                  child: Text(
                                    'Add Guardian      ',
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
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          backgroundColor: Colors.transparent,
                                          elevation: 0,
                                          title: Container(
                                            width: 400,
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blueColor,
                                                border: Border.all(
                                                    color:
                                                        ColorConstant.blueColor,
                                                    width: 2)),
                                            child: Column(
                                              children: [
                                                Container(
                                                  color:
                                                      ColorConstant.blueColor,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "",
                                                        style: GoogleFonts.poppins(
                                                            color: ColorConstant
                                                                .whiteColor,
                                                            fontSize: 30,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      Text(
                                                        "Send Guardian",
                                                        style: GoogleFonts.poppins(
                                                            color: ColorConstant
                                                                .whiteColor,
                                                            fontSize: 30,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      IconButton(
                                                        onPressed: () {
                                                          tap2
                                                              ? setState(() {
                                                                  tap2 = !tap2;
                                                                  whiteColor2 =
                                                                      Colors
                                                                          .white;
                                                                  blueColor2 =
                                                                      Color(
                                                                          0xff2C50ED);
                                                                })
                                                              : setState(() {
                                                                  tap2 = !tap2;
                                                                  blueColor2 =
                                                                      Colors
                                                                          .white;
                                                                  whiteColor2 =
                                                                      Color(
                                                                          0xff2C50ED);
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
                                                Container(
                                                  width: 400,
                                                  color:
                                                      ColorConstant.whiteColor,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      children: [
                                                        // 2
                                                        DropdownWidget4(
                                                            items:
                                                                selectCategorys,
                                                            selectItem:
                                                                'Select Category'),
                                                        // 3
                                                        TextFieldWidget(
                                                            labelText:
                                                                'Expire'),
                                                        // 4
                                                        TextFieldWidget(
                                                            labelText: 'ID'),
                                                        // user
                                                        const SizedBox(
                                                            height: 10),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Image.asset(
                                                                'assets/images/sendGift.png'),
                                                            Text(
                                                              'Gina Rodriquez',
                                                              style: GoogleFonts.inter(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  letterSpacing:
                                                                      0.5),
                                                            ),
                                                            Image.asset(
                                                                'assets/images/giftType.png'),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                            height: 70),
                                                        // Button
                                                        GestureDetector(
                                                          onTap: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: Container(
                                                            alignment: Alignment
                                                                .center,
                                                            height: 36,
                                                            width: 111,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .blueColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4),
                                                            ),
                                                            child: Text(
                                                              'Send',
                                                              style: GoogleFonts.poppins(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: ColorConstant
                                                                      .whiteColor),
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height: 10),
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
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 138,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        color: whiteColor2,
                                        border: Border.all(color: blueColor2),
                                        borderRadius:
                                            BorderRadius.circular(24)),
                                    child: Text(
                                      'Send Guardian',
                                      style: TextStyle(
                                          color: blueColor2,
                                          letterSpacing: 0.5,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // headings
                const SizedBox(
                  height: 2,
                ),
                Container(
                  color: ColorConstant.whiteColor,
                  alignment: Alignment.topCenter,
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.748,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(text: 'SL'),
                            TextWidget(text: 'Name'),
                            TextWidget(text: 'Category'),
                            TextWidget(text: 'Day'),
                            TextWidget(text: 'Price'),
                            TextWidget(text: 'Entry'),
                            TextWidget(text: 'Logo'),
                            TextWidget(text: 'Chat Bubble'),
                            TextWidget(text: 'Action'),
                          ],
                        ),
                      )
                    ],
                  ), // main column End
                ),

                // details
                Container(
                  alignment: Alignment.topCenter,
                  height: 400,
                  width: MediaQuery.of(context).size.width * 0.748,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: ColorConstant.searchColor,
                          alignment: Alignment.topCenter,
                          height: 70,
                          width: MediaQuery.of(context).size.width * 0.748,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget(text: '01'),
                              TextWidget(text: 'All'),
                              TextWidget(text: '500.000'),
                              TextWidget(text: '15/30 Days'),
                              TextWidget(text: '170k/350k'),
                              Container(
                                height: 54,
                                width: 110,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/hondaCBR.png'),
                                        scale: 1.0)),
                              ),
                              Container(
                                height: 54,
                                width: 110,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/hondaCBR.png'),
                                        scale: 1.0)),
                              ),
                              Container(
                                height: 54,
                                width: 110,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/hondaCBR.png'),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                width: 110,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.edit,
                                          color: ColorConstant.blueColor,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.delete,
                                          color: ColorConstant.blueColor,
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                          )
                        ],
                      ),
                    ],
                  ), // main column End
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
