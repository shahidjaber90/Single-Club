import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/admin_field_heading.dart';
import 'package:singleclub/Widgets/admin_textfield.dart';
import 'package:singleclub/Widgets/alertButton.dart';

class Settingpage extends StatefulWidget {
  const Settingpage({super.key});

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  bool tap1 = false;
  bool tap2 = false;
  Color whiteColor = (Colors.white);
  Color blueColor = const Color(0xff2C50ED);
  Color whiteColor2 = (Colors.white);
  Color blueColor2 = const Color(0xff2C50ED);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2.2,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorConstant.blueColor,
                    width: 2,
                  ),
                  color: ColorConstant.whiteColor,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        color: ColorConstant.blueColor,
                        height: 53,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            "Personal Information",
                            style: GoogleFonts.poppins(
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                                color: ColorConstant.whiteColor),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              // color: Colors.amber,

                              width: MediaQuery.of(context).size.width /
                                  2.5 /
                                  1.75,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    /// buttons
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 280,
                                          child: Stack(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  tap1
                                                      ? setState(() {
                                                          tap1 = !tap1;
                                                          whiteColor =
                                                              Colors.white;
                                                          blueColor =
                                                              Color(0xff2C50ED);
                                                        })
                                                      : setState(() {
                                                          tap1 = !tap1;
                                                          blueColor =
                                                              Colors.white;
                                                          whiteColor =
                                                              Color(0xff2C50ED);
                                                        });
                                                },
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  width: 138,
                                                  height: 32,
                                                  decoration: BoxDecoration(
                                                      color: whiteColor,
                                                      border: Border.all(
                                                          color: blueColor),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24)),
                                                  child: Text(
                                                    'Voice Room',
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
                                                left: 120,
                                                child: GestureDetector(
                                                  onTap: () {
                                                    tap2
                                                        ? setState(() {
                                                            tap2 = !tap2;
                                                            whiteColor2 =
                                                                Colors.white;
                                                            blueColor2 = Color(
                                                                0xff2C50ED);
                                                          })
                                                        : setState(() {
                                                            tap2 = !tap2;
                                                            blueColor2 =
                                                                Colors.white;
                                                            whiteColor2 = Color(
                                                                0xff2C50ED);
                                                          });
                                                  },
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    width: 138,
                                                    height: 32,
                                                    decoration: BoxDecoration(
                                                        color: whiteColor2,
                                                        border: Border.all(
                                                            color: blueColor2),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(24)),
                                                    child: Text(
                                                      'Post Reaction',
                                                      style: TextStyle(
                                                          color: blueColor2,
                                                          letterSpacing: 0.5,
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),

                                    /// fields
                                    const AdminFieldHeading(
                                        headingText: 'Name'),
                                    AdminTextFieldWidget(),
                                    const AdminFieldHeading(
                                        headingText: 'Numer'),
                                    AdminTextFieldWidget(),
                                    const AdminFieldHeading(
                                        headingText: 'Email'),
                                    AdminTextFieldWidget(),
                                    const AdminFieldHeading(
                                        headingText: 'Current Password'),
                                    AdminTextFieldWidget(),
                                    const AdminFieldHeading(
                                        headingText: 'New Password'),
                                    AdminTextFieldWidget(),
                                    const AdminFieldHeading(
                                        headingText: 'Confirm Password'),
                                    AdminTextFieldWidget(),
                                    const AdminFieldHeading(
                                        headingText: 'Facebook'),
                                    AdminTextFieldWidget(),
                                    const AdminFieldHeading(
                                        headingText: 'Whatsapp'),
                                    AdminTextFieldWidget(),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  color: ColorConstant.whiteColor,
                                  width: MediaQuery.of(context).size.width /
                                      2.5 /
                                      2,
                                  child: Row(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2.5 /
                                                2,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                2.1,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: ColorConstant.blueColor,
                                              width: 2),
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.22,
                                              height: 120,
                                              decoration: BoxDecoration(
                                                color: ColorConstant.blueColor,
                                              ),
                                              child: Center(
                                                  child: Text(
                                                "Ad Cover ",
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .whiteColor),
                                              )),
                                            ),
                                            //
                                            Positioned(
                                                top: 132,
                                                left: 193,
                                                child: Container(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    // mainAxisAlignment:
                                                    //     MainAxisAlignment
                                                    //         .spaceBetween,
                                                    children: [
                                                      LineIcon.facebook(
                                                        color: ColorConstant
                                                            .blueColor,
                                                      ),
                                                      LineIcon.whatSApp(
                                                        color: ColorConstant
                                                            .blueColor,
                                                      ),
                                                      LineIcon(
                                                        Icons.call,
                                                        size: 17,
                                                        color: ColorConstant
                                                            .blueColor,
                                                      ),
                                                    ],
                                                  ),
                                                )),

                                            // profile
                                            Positioned(
                                              top: 70,
                                              left: 85,
                                              child: Container(
                                                width: 106,
                                                height: 106,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: ColorConstant
                                                        .whiteColor,
                                                    border: Border.all(
                                                        color: ColorConstant
                                                            .blueColor)),
                                                child: Center(
                                                    child: Text(
                                                  "Ad Profile ",
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .blueColor),
                                                )),
                                              ),
                                            ),
                                            // name and icons
                                            // name and icons
                                            Positioned(
                                              top: 170,
                                              left: 80,
                                              child: Container(
                                                width: 180,
                                                // height: 50,
                                                child: Column(
                                                  children: [
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "King Of King’s",
                                                          style: GoogleFonts.poppins(
                                                              fontSize: 16,
                                                              color:
                                                                  ColorConstant
                                                                      .blueColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              letterSpacing:
                                                                  0.5),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text(
                                                          "master Panel",
                                                          style: GoogleFonts.poppins(
                                                              fontSize: 12,
                                                              color:
                                                                  ColorConstant
                                                                      .blueColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              letterSpacing:
                                                                  0.5),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "Power Atton",
                                                          style: GoogleFonts.poppins(
                                                              fontSize: 16,
                                                              color:
                                                                  ColorConstant
                                                                      .blueColor,
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
                                              ),
                                            ),
                                            // bottom reward
                                            Positioned(
                                                top: 260,
                                                left: -20,
                                                child: Container(
                                                  // height: 70,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.22,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Image.asset(
                                                              'assets/icons/salarys.png'),
                                                          Text(
                                                            'Recharge',
                                                            style: GoogleFonts
                                                                .beVietnamPro(
                                                                    fontSize: 8,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                          ),
                                                        ],
                                                      ),
                                                      // 2
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Image.asset(
                                                              'assets/icons/Group.png'),
                                                          Text(
                                                            'Salary',
                                                            style: GoogleFonts
                                                                .beVietnamPro(
                                                                    fontSize: 8,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                          ),
                                                        ],
                                                      ),
                                                      // 3
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Image.asset(
                                                              'assets/icons/ban.png'),
                                                          Text(
                                                            'Ban',
                                                            style: GoogleFonts
                                                                .beVietnamPro(
                                                                    fontSize: 8,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                          ),
                                                        ],
                                                      ),
                                                      // 4
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Image.asset(
                                                              'assets/icons/user.png'),
                                                          Text(
                                                            'Unban',
                                                            style: GoogleFonts
                                                                .beVietnamPro(
                                                                    fontSize: 8,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 300,
                                ),
                                AlertButton(buttonName: "Save"),
                                const SizedBox(
                                  height: 12,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  // second profile
                  Container(
                    width: MediaQuery.of(context).size.width * 0.22,
                    height: 254,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: ColorConstant.blueColor, width: 2),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.22,
                          height: 120,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Screenshot_342 1.png'),
                                  fit: BoxFit.fill)),
                        ),
                        // profile
                        Positioned(
                          top: 70,
                          left: 0,
                          child: Container(
                            width: 106,
                            height: 106,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/user.png'),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        // name and icons
                        Positioned(
                          top: 120,
                          left: 110,
                          child: Container(
                            width: 180,
                            height: 50,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "King Of King’s",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.5),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Power",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.5),
                                    ),
                                    Container(
                                      width: 80,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          LineIcon.facebook(
                                            color: ColorConstant.blueColor,
                                          ),
                                          LineIcon.whatSApp(
                                            color: ColorConstant.blueColor,
                                          ),
                                          LineIcon(
                                            Icons.call,
                                            color: ColorConstant.blueColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        // bottom reward
                        Positioned(
                            top: 180,
                            child: Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width * 0.22,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset('assets/icons/salarys.png'),
                                      Text(
                                        'Recharge',
                                        style: GoogleFonts.beVietnamPro(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        '17.79 M',
                                        style: GoogleFonts.beVietnamPro(
                                            color: ColorConstant.arrowColor,
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  // 2
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset('assets/icons/Group.png'),
                                      Text(
                                        'Salary',
                                        style: GoogleFonts.beVietnamPro(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        '17.79 M',
                                        style: GoogleFonts.beVietnamPro(
                                            color: ColorConstant.arrowColor,
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  // 3
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset('assets/icons/ban.png'),
                                      Text(
                                        'Ban',
                                        style: GoogleFonts.beVietnamPro(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        '12345',
                                        style: GoogleFonts.beVietnamPro(
                                            color: ColorConstant.arrowColor,
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  // 4
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset('assets/icons/user.png'),
                                      Text(
                                        'Unban',
                                        style: GoogleFonts.beVietnamPro(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        '12345',
                                        style: GoogleFonts.beVietnamPro(
                                            color: ColorConstant.arrowColor,
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
