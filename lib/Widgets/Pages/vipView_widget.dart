import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/dropdown_widget.dart';
import 'package:singleclub/Widgets/textfield_heading.dart';
import 'package:singleclub/Widgets/textfield_widget.dart';
import 'package:singleclub/Widgets/textwidget.dart';

class VipViewWidget extends StatefulWidget {
  const VipViewWidget({super.key});

  @override
  State<VipViewWidget> createState() => _VipViewWidgetState();
}

class _VipViewWidgetState extends State<VipViewWidget> {
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
                      height: 160,
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
                                          color: ColorConstant.blueColor,
                                          child: Column(
                                            children: [
                                              Container(
                                                // height: 53,
                                                // width: double.infinity,
                                                color: ColorConstant.blueColor,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      // textAlign: TextAlign.center,
                                                      "Add Vip",
                                                      style: GoogleFonts.poppins(
                                                          color: ColorConstant
                                                              .whiteColor,
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    const SizedBox(
                                                      width: 60,
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
                                                // width: 425,
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
                                                      // TextFieldHeadnig(
                                                      //     headingText: 'VIP'),
                                                      DropdownWidget(
                                                          items:
                                                              selectCategorys,
                                                          selectItem:
                                                              'Select Category',
                                                          title: 'VIP'),

                                                      // 2
                                                      DropDown2(),

                                                      // 3
                                                      TextFieldHeadnig(
                                                          headingText: 'Name'),
                                                      TextFieldWidget(
                                                          labelText:
                                                              'Enter Name'),
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
                                                      // 6

                                                      DropdownWidget3(
                                                        title: 'Opportunity',
                                                        hintText:
                                                            'Select Power',
                                                      ),
                                                      const SizedBox(
                                                        height: 20,
                                                      ),
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
                                                              'Select Medal'),
                                                      //
                                                      const SizedBox(
                                                        height: 20,
                                                      ),
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
                                                      const SizedBox(
                                                        height: 20,
                                                      ),
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
                                                      //
                                                      const SizedBox(
                                                        height: 20,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 16),
                                                        child: Row(
                                                          children: [
                                                            SvgPicture.asset(
                                                                'assets/svg/listitem/video_call_frame.svg')
                                                          ],
                                                        ),
                                                      ),
                                                      DropdownWidget4(
                                                          items:
                                                              selectCategorys,
                                                          selectItem:
                                                              'Select Frame'),
                                                      const SizedBox(
                                                          height: 18),
                                                      //

                                                      // Button
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 12),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
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
                                                                  'Cancel',
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
                                                                  'Save',
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
                                    'Add VIP',
                                    style: TextStyle(
                                        color: blueColor,
                                        letterSpacing: 0.5,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 120,
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
                                            // width: 400,
                                            color: ColorConstant.blueColor,
                                            child: Column(
                                              children: [
                                                Container(
                                                  // height: 53,
                                                  // width: double.infinity,
                                                  color:
                                                      ColorConstant.blueColor,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        // textAlign: TextAlign.center,
                                                        "Send Vip",
                                                        style: GoogleFonts.poppins(
                                                            color: ColorConstant
                                                                .whiteColor,
                                                            fontSize: 30,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      const SizedBox(
                                                        width: 60,
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
                                                        DropdownWidget(
                                                            items:
                                                                selectCategorys,
                                                            selectItem:
                                                                'Select Category',
                                                            title: 'Category'),
                                                        // 3
                                                        TextFieldWidget(
                                                            labelText:
                                                                'Expire:'),
                                                        // 4
                                                        TextFieldWidget(
                                                            labelText: 'ID:'),
                                                        // user
                                                        const SizedBox(
                                                            height: 20),
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
                                                            height: 90),
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
                                      'Send VIP',
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
                  color: ColorConstant.searchColor,
                  alignment: Alignment.topCenter,
                  // height: 170,
                  width: MediaQuery.of(context).size.width * 0.748,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
                      )
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
