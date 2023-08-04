import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icon.dart';
import 'package:provider/provider.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/Pages/add_admin_widget.dart';
import 'package:singleclub/provider/togglepage.dart';

class AddAdminPage extends StatefulWidget {
  const AddAdminPage({super.key});

  @override
  State<AddAdminPage> createState() => _AddAdminPageState();
}

class _AddAdminPageState extends State<AddAdminPage> {
  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteColor,
      body: Consumer<Myprovider>(
        builder: (context, value, child) => Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // Left Navigation Bar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.24,
                    child: const AddAdminWidget(),
                  ),
                ),

                // App Bar Start
                Container(
                  // alignment: Alignment.topCenter,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 0.76,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: MediaQuery.of(context).size.height * 0.90,
                          child: Column(
                            children: [
                              const SizedBox(height: 16),
                              // first row
                              Row(
                                children: [
                                  // first profile
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.22,
                                    height: 254,
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
                                                    image: AssetImage(
                                                        'assets/images/user.png'),
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
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize: 16,
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
                                                          .spaceBetween,
                                                  children: [
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      "Power",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              letterSpacing:
                                                                  0.5),
                                                    ),
                                                    Container(
                                                      width: 80,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
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
                                                            color: ColorConstant
                                                                .blueColor,
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
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.22,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
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
                                                      Text(
                                                        '17.79 M',
                                                        style: GoogleFonts
                                                            .beVietnamPro(
                                                                color: ColorConstant
                                                                    .arrowColor,
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
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
                                                      Text(
                                                        '17.79 M',
                                                        style: GoogleFonts
                                                            .beVietnamPro(
                                                                color: ColorConstant
                                                                    .arrowColor,
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
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
                                                      Text(
                                                        '12345',
                                                        style: GoogleFonts
                                                            .beVietnamPro(
                                                                color: ColorConstant
                                                                    .arrowColor,
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
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
                                                      Text(
                                                        '12345',
                                                        style: GoogleFonts
                                                            .beVietnamPro(
                                                                color: ColorConstant
                                                                    .arrowColor,
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  // second profile
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.22,
                                    height: 254,
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
                                                    image: AssetImage(
                                                        'assets/images/user.png'),
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
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize: 16,
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
                                                          .spaceBetween,
                                                  children: [
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      "Power",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              letterSpacing:
                                                                  0.5),
                                                    ),
                                                    Container(
                                                      width: 80,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
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
                                                            color: ColorConstant
                                                                .blueColor,
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
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.22,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
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
                                                      Text(
                                                        '17.79 M',
                                                        style: GoogleFonts
                                                            .beVietnamPro(
                                                                color: ColorConstant
                                                                    .arrowColor,
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
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
                                                      Text(
                                                        '17.79 M',
                                                        style: GoogleFonts
                                                            .beVietnamPro(
                                                                color: ColorConstant
                                                                    .arrowColor,
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
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
                                                      Text(
                                                        '12345',
                                                        style: GoogleFonts
                                                            .beVietnamPro(
                                                                color: ColorConstant
                                                                    .arrowColor,
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
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
                                                      Text(
                                                        '12345',
                                                        style: GoogleFonts
                                                            .beVietnamPro(
                                                                color: ColorConstant
                                                                    .arrowColor,
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
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
                              // second row
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  // first profile
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.22,
                                    height: 254,
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
                                                    image: AssetImage(
                                                        'assets/images/user.png'),
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
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize: 16,
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
                                                          .spaceBetween,
                                                  children: [
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      "Power",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              letterSpacing:
                                                                  0.5),
                                                    ),
                                                    Container(
                                                      width: 80,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
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
                                                            color: ColorConstant
                                                                .blueColor,
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
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.22,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
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
                                                      Text(
                                                        '17.79 M',
                                                        style: GoogleFonts
                                                            .beVietnamPro(
                                                                color: ColorConstant
                                                                    .arrowColor,
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
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
                                                      Text(
                                                        '17.79 M',
                                                        style: GoogleFonts
                                                            .beVietnamPro(
                                                                color: ColorConstant
                                                                    .arrowColor,
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
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
                                                      Text(
                                                        '12345',
                                                        style: GoogleFonts
                                                            .beVietnamPro(
                                                                color: ColorConstant
                                                                    .arrowColor,
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
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
                                                      Text(
                                                        '12345',
                                                        style: GoogleFonts
                                                            .beVietnamPro(
                                                                color: ColorConstant
                                                                    .arrowColor,
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  // fourth profile
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.22,
                                    height: 254,
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
                                                    image: AssetImage(
                                                        'assets/images/user.png'),
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
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize: 16,
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
                                                          .spaceBetween,
                                                  children: [
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      "Power",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              letterSpacing:
                                                                  0.5),
                                                    ),
                                                    Container(
                                                      width: 80,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
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
                                                            color: ColorConstant
                                                                .blueColor,
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
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.22,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
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
                                                      Text(
                                                        '17.79 M',
                                                        style: GoogleFonts
                                                            .beVietnamPro(
                                                                color: ColorConstant
                                                                    .arrowColor,
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
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
                                                      Text(
                                                        '17.79 M',
                                                        style: GoogleFonts
                                                            .beVietnamPro(
                                                                color: ColorConstant
                                                                    .arrowColor,
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
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
                                                      Text(
                                                        '12345',
                                                        style: GoogleFonts
                                                            .beVietnamPro(
                                                                color: ColorConstant
                                                                    .arrowColor,
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
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
                                                      Text(
                                                        '12345',
                                                        style: GoogleFonts
                                                            .beVietnamPro(
                                                                color: ColorConstant
                                                                    .arrowColor,
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
