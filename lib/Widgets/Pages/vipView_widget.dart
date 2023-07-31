import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/giftsData.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/textwidget.dart';

class VipViewWidget extends StatefulWidget {
  const VipViewWidget({super.key});

  @override
  State<VipViewWidget> createState() => _VipViewWidgetState();
}

class _VipViewWidgetState extends State<VipViewWidget> {
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
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        scrollable: true,
                                        backgroundColor: Colors.transparent,
                                        elevation: 0,
                                        title: Container(
                                          width: 425,
                                          color: ColorConstant.blueColor,
                                          child: Column(
                                            children: [
                                              Text(
                                                'Add VIP',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.poppins(
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0.5,
                                                    color: ColorConstant
                                                        .whiteColor),
                                              ),
                                              Container(
                                                width: 425,
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
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 50),
                                                        child: Text(
                                                          'VIP',
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 8,
                                                                horizontal: 50),
                                                        child: TextFormField(
                                                          decoration:
                                                              InputDecoration(
                                                                  suffixIcon:
                                                                      Icon(
                                                                    Icons
                                                                        .keyboard_arrow_down_rounded,
                                                                    color: ColorConstant
                                                                        .blueColor,
                                                                  ),
                                                                  hintText:
                                                                      'Select Category:',
                                                                  hintStyle: GoogleFonts.poppins(
                                                                      fontSize:
                                                                          16,
                                                                      color: ColorConstant
                                                                          .arrowColor),
                                                                  border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: ColorConstant.blueColor))),
                                                        ),
                                                      ),

                                                      // 2
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 50),
                                                        child: Text(
                                                          'VIP',
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 8,
                                                                horizontal: 50),
                                                        child: TextFormField(
                                                          decoration: InputDecoration(
                                                              hintText:
                                                                  'Select Types:',
                                                              hintStyle: GoogleFonts
                                                                  .poppins(
                                                                      fontSize:
                                                                          16,
                                                                      color: ColorConstant
                                                                          .arrowColor),
                                                              border: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide(
                                                                          color:
                                                                              ColorConstant.blueColor))),
                                                        ),
                                                      ),

                                                      // 3
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 50),
                                                        child: Text(
                                                          'Name',
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 8,
                                                                horizontal: 50),
                                                        child: TextFormField(
                                                          decoration: InputDecoration(
                                                              hintText:
                                                                  'Enter Name:',
                                                              hintStyle: GoogleFonts
                                                                  .poppins(
                                                                      fontSize:
                                                                          16,
                                                                      color: ColorConstant
                                                                          .arrowColor),
                                                              border: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide(
                                                                          color:
                                                                              ColorConstant.blueColor))),
                                                        ),
                                                      ),
                                                      // 4
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 50),
                                                        child: Text(
                                                          'Day',
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 8,
                                                                horizontal: 50),
                                                        child: TextFormField(
                                                          decoration:
                                                              InputDecoration(
                                                                  suffixIcon:
                                                                      Icon(
                                                                    Icons
                                                                        .keyboard_arrow_down_rounded,
                                                                    color: ColorConstant
                                                                        .blueColor,
                                                                  ),
                                                                  hintText:
                                                                      'Select Days:',
                                                                  hintStyle: GoogleFonts.poppins(
                                                                      fontSize:
                                                                          16,
                                                                      color: ColorConstant
                                                                          .arrowColor),
                                                                  border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: ColorConstant.blueColor))),
                                                        ),
                                                      ),
                                                      // 5
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 50),
                                                        child: Text(
                                                          'Price',
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 8,
                                                                horizontal: 50),
                                                        child: TextFormField(
                                                          decoration: InputDecoration(
                                                              hintText: 'Coin:',
                                                              hintStyle: GoogleFonts
                                                                  .poppins(
                                                                      fontSize:
                                                                          16,
                                                                      color: ColorConstant
                                                                          .arrowColor),
                                                              border: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide(
                                                                          color:
                                                                              ColorConstant.blueColor))),
                                                        ),
                                                      ),
                                                      // 6
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 50),
                                                        child: Text(
                                                          'Opportunity',
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 8,
                                                                horizontal: 50),
                                                        child: TextFormField(
                                                          decoration:
                                                              InputDecoration(
                                                                  suffixIcon:
                                                                      Icon(
                                                                    Icons
                                                                        .keyboard_arrow_down_rounded,
                                                                    color: ColorConstant
                                                                        .blueColor,
                                                                  ),
                                                                  hintText:
                                                                      'Select Power:',
                                                                  hintStyle: GoogleFonts.poppins(
                                                                      fontSize:
                                                                          16,
                                                                      color: ColorConstant
                                                                          .arrowColor),
                                                                  border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: ColorConstant.blueColor))),
                                                        ),
                                                      ),
                                                      // icons

                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Column(
                                                            children: [
                                                              Image.asset(
                                                                'assets/icons/speed_up_the_upgrating.png',
                                                              ),
                                                              Text(
                                                                'VIP Gift',
                                                                style: GoogleFonts.inter(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    letterSpacing:
                                                                        0.5),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              Image.asset(
                                                                  'assets/icons/vip_medal.png'),
                                                              Text(
                                                                'VIP Medal',
                                                                style: GoogleFonts.inter(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    letterSpacing:
                                                                        0.5),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              Image.asset(
                                                                  'assets/icons/vip_diamonds.png'),
                                                              Text(
                                                                'VIP Diamonds',
                                                                style: GoogleFonts.inter(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    letterSpacing:
                                                                        0.5),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 8,
                                                      ),
                                                      // line 2
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Column(
                                                            children: [
                                                              Image.asset(
                                                                  'assets/icons/vip_bullet_screen.png'),
                                                              Text(
                                                                'VIP Bullet \nScreen',
                                                                style: GoogleFonts.inter(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    letterSpacing:
                                                                        0.5),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              Image.asset(
                                                                  'assets/icons/entrance_effect.png'),
                                                              Text(
                                                                'Entrance \nEffect',
                                                                style: GoogleFonts.inter(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    letterSpacing:
                                                                        0.5),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              Image.asset(
                                                                'assets/icons/vip_diamonds.png',
                                                              ),
                                                              Text(
                                                                'Privileged \nFunction',
                                                                style: GoogleFonts.inter(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    letterSpacing:
                                                                        0.5),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 8,
                                                      ),
                                                      // line 3
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Column(
                                                            children: [
                                                              Image.asset(
                                                                  'assets/icons/chat_bubbles.png'),
                                                              Text(
                                                                'Chat Bubbles',
                                                                style: GoogleFonts.inter(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    letterSpacing:
                                                                        0.5),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              Image.asset(
                                                                  'assets/icons/profile_picture_decoration.png'),
                                                              Text(
                                                                'Profile Picture \nDecoration',
                                                                style: GoogleFonts.inter(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    letterSpacing:
                                                                        0.5),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              Image.asset(
                                                                'assets/icons/verification.png',
                                                              ),
                                                              Text(
                                                                'Distinguished \nProfile Card',
                                                                style: GoogleFonts.inter(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    letterSpacing:
                                                                        0.5),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 8,
                                                      ),
                                                      // line 4
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Column(
                                                            children: [
                                                              Image.asset(
                                                                  'assets/icons/vip_bullet_screen.png'),
                                                              Text(
                                                                'VIP Bullet \nScreen',
                                                                style: GoogleFonts.inter(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    letterSpacing:
                                                                        0.5),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              Image.asset(
                                                                  'assets/icons/entrance_effect.png'),
                                                              Text(
                                                                'Entrance \nEffect',
                                                                style: GoogleFonts.inter(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    letterSpacing:
                                                                        0.5),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              Image.asset(
                                                                'assets/icons/vip_diamonds.png',
                                                              ),
                                                              Text(
                                                                'Privileged \nFunction',
                                                                style: GoogleFonts.inter(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    letterSpacing:
                                                                        0.5),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 8,
                                                      ),
                                                      // line 5
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Column(
                                                            children: [
                                                              Image.asset(
                                                                  'assets/icons/chat_bubbles.png'),
                                                              Text(
                                                                'Chat Bubbles',
                                                                style: GoogleFonts.inter(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    letterSpacing:
                                                                        0.5),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              Image.asset(
                                                                  'assets/icons/profile_picture_decoration.png'),
                                                              Text(
                                                                'Profile Picture \nDecoration',
                                                                style: GoogleFonts.inter(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    letterSpacing:
                                                                        0.5),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              Image.asset(
                                                                'assets/icons/verification.png',
                                                              ),
                                                              Text(
                                                                'Distinguished \nProfile Card',
                                                                style: GoogleFonts.inter(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    letterSpacing:
                                                                        0.5),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),

                                                      /////////////////////////////
                                                      Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      50),
                                                          child: Image.asset(
                                                              'assets/icons/vip_medal.png')),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 50),
                                                        child: TextFormField(
                                                          decoration:
                                                              InputDecoration(
                                                                  suffixIcon:
                                                                      Icon(
                                                                    Icons
                                                                        .keyboard_arrow_down_rounded,
                                                                    color: ColorConstant
                                                                        .blueColor,
                                                                  ),
                                                                  hintText:
                                                                      'Select Medal:',
                                                                  hintStyle: GoogleFonts.poppins(
                                                                      fontSize:
                                                                          16,
                                                                      color: ColorConstant
                                                                          .arrowColor),
                                                                  border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: ColorConstant.blueColor))),
                                                        ),
                                                      ),
                                                      // line 7
                                                      Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      50),
                                                          child: Image.asset(
                                                              'assets/icons/entrance_effect.png')),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 50),
                                                        child: TextFormField(
                                                          decoration:
                                                              InputDecoration(
                                                                  suffixIcon:
                                                                      Icon(
                                                                    Icons
                                                                        .keyboard_arrow_down_rounded,
                                                                    color: ColorConstant
                                                                        .blueColor,
                                                                  ),
                                                                  hintText:
                                                                      'Select Entry:',
                                                                  hintStyle: GoogleFonts.poppins(
                                                                      fontSize:
                                                                          16,
                                                                      color: ColorConstant
                                                                          .arrowColor),
                                                                  border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: ColorConstant.blueColor))),
                                                        ),
                                                      ),
                                                      // line 8
                                                      Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      50),
                                                          child: Image.asset(
                                                              'assets/icons/chat_bubbles.png')),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 8,
                                                                horizontal: 50),
                                                        child: TextFormField(
                                                          decoration:
                                                              InputDecoration(
                                                                  suffixIcon:
                                                                      Icon(
                                                                    Icons
                                                                        .keyboard_arrow_down_rounded,
                                                                    color: ColorConstant
                                                                        .blueColor,
                                                                  ),
                                                                  hintText:
                                                                      'Select Bubble Chat:',
                                                                  hintStyle: GoogleFonts.poppins(
                                                                      fontSize:
                                                                          16,
                                                                      color: ColorConstant
                                                                          .arrowColor),
                                                                  border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: ColorConstant.blueColor))),
                                                        ),
                                                      ),
                                                      // line 9
                                                      Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      50),
                                                          child: Image.asset(
                                                              'assets/icons/video_call_frame.png')),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 8,
                                                                horizontal: 50),
                                                        child: TextFormField(
                                                          decoration:
                                                              InputDecoration(
                                                                  suffixIcon:
                                                                      Icon(
                                                                    Icons
                                                                        .keyboard_arrow_down_rounded,
                                                                    color: ColorConstant
                                                                        .blueColor,
                                                                  ),
                                                                  hintText:
                                                                      'Select Frame:',
                                                                  hintStyle: GoogleFonts.poppins(
                                                                      fontSize:
                                                                          16,
                                                                      color: ColorConstant
                                                                          .arrowColor),
                                                                  border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: ColorConstant.blueColor))),
                                                        ),
                                                      ),
                                                      // line 8
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
                                      color: ColorConstant.whiteColor,
                                      border: Border.all(
                                          color: ColorConstant.blueColor),
                                      borderRadius: BorderRadius.circular(24)),
                                  child: Text(
                                    'Add VIP',
                                    style: TextStyle(
                                        color: ColorConstant.blueColor,
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
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          backgroundColor: Colors.transparent,
                                          elevation: 0,
                                          title: Container(
                                            width: 325,
                                            color: ColorConstant.blueColor,
                                            child: Column(
                                              children: [
                                                Text(
                                                  'Send Gift',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.5,
                                                      color: ColorConstant
                                                          .whiteColor),
                                                ),
                                                Container(
                                                  width: 325,
                                                  color:
                                                      ColorConstant.whiteColor,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      children: [
                                                        // 2
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical: 8,
                                                                  horizontal:
                                                                      10),
                                                          child: TextFormField(
                                                            decoration:
                                                                InputDecoration(
                                                                    suffixIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .keyboard_arrow_down_rounded,
                                                                      color: ColorConstant
                                                                          .arrowColor,
                                                                    ),
                                                                    hintText:
                                                                        'Select Category:',
                                                                    hintStyle: GoogleFonts.poppins(
                                                                        fontSize:
                                                                            16,
                                                                        color: ColorConstant
                                                                            .arrowColor),
                                                                    border: OutlineInputBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                8),
                                                                        borderSide:
                                                                            BorderSide(color: ColorConstant.blueColor))),
                                                          ),
                                                        ),
                                                        // 3
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical: 8,
                                                                  horizontal:
                                                                      10),
                                                          child: TextFormField(
                                                            decoration: InputDecoration(
                                                                hintText:
                                                                    'Expire:',
                                                                hintStyle: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorConstant
                                                                        .arrowColor),
                                                                border: OutlineInputBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                                8),
                                                                    borderSide:
                                                                        BorderSide(
                                                                            color:
                                                                                ColorConstant.blueColor))),
                                                          ),
                                                        ),
                                                        // 4
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical: 8,
                                                                  horizontal:
                                                                      10),
                                                          child: TextFormField(
                                                            decoration: InputDecoration(
                                                                hintText: 'ID:',
                                                                hintStyle: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorConstant
                                                                        .arrowColor),
                                                                border: OutlineInputBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                                8),
                                                                    borderSide:
                                                                        BorderSide(
                                                                            color:
                                                                                ColorConstant.blueColor))),
                                                          ),
                                                        ),
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
                                        color: ColorConstant.blueColor,
                                        borderRadius:
                                            BorderRadius.circular(24)),
                                    child: Text(
                                      'Send VIP',
                                      style: TextStyle(
                                          color: ColorConstant.whiteColor,
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
                  height: 70,
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
