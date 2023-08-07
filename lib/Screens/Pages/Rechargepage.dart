import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Widgets/alertButton.dart';
import 'package:singleclub/Widgets/dropdown_widget.dart';

import '../../Utils/colors.dart';
import '../../Widgets/textfield_widget.dart';

class RechargePage extends StatefulWidget {
  const RechargePage({super.key});

  @override
  State<RechargePage> createState() => _RechargePageState();
}

class _RechargePageState extends State<RechargePage> {
  bool tap1 = false;
  bool tap2 = false;
  Color whiteColor = (Colors.white);
  Color blueColor = const Color(0xff2C50ED);
  Color whiteColor2 = (Colors.white);
  Color blueColor2 = const Color(0xff2C50ED);

  final List text = [
    "SN",
    "Admin",
    "Cateory",
    "Recharge/Back",
    "IdSerial",
    "Bonus item",
    "Day",
    "Date/Time",
    "Current Coin",
    "Record",
  ];
  final List text2 = [
    "01",
    "King of Kings",
    "Master Panel",
    "Recharge 500k",
    "578456",
    "Vip 1-super car",
    "3 Days",
    "14-Feb-1994 15:39 PM",
    "1548256",
    "Check",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 150,
              ),
              Container(
                height: 140,
                width: 600,
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 320,
                      height: 140,
                      decoration: BoxDecoration(
                          color: ColorConstant.whiteColor,
                          border: Border.all(color: ColorConstant.blueColor),
                          borderRadius: BorderRadius.circular(24)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8)
                            .copyWith(left: 50),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 30,
                              width: 50,
                              child: Image.asset("assets/icons/ruby.png"),
                            ),
                            Text(
                              '78500000',
                              style: GoogleFonts.poppins(
                                  color: ColorConstant.blueColor,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Avalaible ',
                              style: GoogleFonts.poppins(
                                  color: ColorConstant.blueColor,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 240,
                      child: Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 140,
                        decoration: BoxDecoration(
                            color: ColorConstant.blueColor,
                            borderRadius: BorderRadius.circular(24)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 30,
                                width: 50,
                                child: Image.asset("assets/icons/ruby.png"),
                              ),
                              Text(
                                '18400000',
                                style: GoogleFonts.poppins(
                                    color: ColorConstant.whiteColor,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Recharge ',
                                style: GoogleFonts.poppins(
                                    color: ColorConstant.whiteColor,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Text("HELLO"),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  height: 40,
                  width: 800,
                  child: Stack(
                    children: [
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
                            builder: (context) => AlertDialog(
                              scrollable: true,
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              actions: [
                                Container(
                                  width: 400,
                                  height: 641,
                                  color: ColorConstant.whiteColor,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                                "Recharge",
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
                                                  Navigator.pop(context);
                                                },
                                                icon: const Icon(Icons.close),
                                                color: ColorConstant.whiteColor,
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    height: 40,
                                                    width: 280,
                                                    child: Stack(
                                                      children: [
                                                        GestureDetector(
                                                          child: Container(
                                                            alignment: Alignment
                                                                .center,
                                                            width: 138,
                                                            height: 32,
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .whiteColor,
                                                                border: Border.all(
                                                                    color: ColorConstant
                                                                        .blueColor),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            24)),
                                                            child: Text(
                                                              'Admin',
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueColor,
                                                                  letterSpacing:
                                                                      0.5,
                                                                  fontSize: 11,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700),
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          left: 120,
                                                          child:
                                                              GestureDetector(
                                                            //

                                                            //
                                                            //
                                                            //
                                                            //
                                                            //
                                                            //

                                                            child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              width: 138,
                                                              height: 32,
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .whiteColor,
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .blueColor),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              24)),
                                                              child: Text(
                                                                'User',
                                                                style: TextStyle(
                                                                    color: ColorConstant
                                                                        .blueColor,
                                                                    letterSpacing:
                                                                        0.5,
                                                                    fontSize:
                                                                        11,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              DropdownWidget(
                                                  items: adminList,
                                                  selectItem: 'Select Admin',
                                                  title: 'Admin'),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              TextFieldWidget(
                                                  labelText:
                                                      ' Recharge Amount'),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              TextFieldWidget(
                                                  labelText: 'ID :'),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Text(
                                                "Bonus Gift",
                                                style: GoogleFonts.inter(
                                                    color: Colors.black,
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              TextFieldWidget(
                                                  labelText:
                                                      'Select Category :'),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              DropdownWidget5(),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              TextFieldWidget(
                                                  labelText: ' Expire'),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                            ],
                                          ),
                                        ),
                                        AlertButton(buttonName: 'Add'),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                            'Recharge',
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
                              builder: (context) => AlertDialog(
                                scrollable: true,
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                actions: [
                                  Container(
                                    width: 400,
                                    color: ColorConstant.whiteColor,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                                                  "Recharge Back",
                                                  style: GoogleFonts.poppins(
                                                      color: ColorConstant
                                                          .whiteColor,
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                const SizedBox(
                                                  width: 40,
                                                ),
                                                IconButton(
                                                  onPressed: () {
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
                                                    Navigator.pop(context);
                                                  },
                                                  icon: const Icon(Icons.close),
                                                  color:
                                                      ColorConstant.whiteColor,
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      height: 40,
                                                      width: 280,
                                                      child: Stack(
                                                        children: [
                                                          GestureDetector(
                                                            child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              width: 138,
                                                              height: 32,
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .whiteColor,
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .blueColor),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              24)),
                                                              child: Text(
                                                                'Admin',
                                                                style: TextStyle(
                                                                    color: ColorConstant
                                                                        .blueColor,
                                                                    letterSpacing:
                                                                        0.5,
                                                                    fontSize:
                                                                        11,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 120,
                                                            child:
                                                                GestureDetector(
                                                              //

                                                              //
                                                              //
                                                              //
                                                              //
                                                              //
                                                              //

                                                              child: Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                width: 138,
                                                                height: 32,
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .whiteColor,
                                                                    border: Border.all(
                                                                        color: ColorConstant
                                                                            .blueColor),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            24)),
                                                                child: Text(
                                                                  'User',
                                                                  style: TextStyle(
                                                                      color: ColorConstant
                                                                          .blueColor,
                                                                      letterSpacing:
                                                                          0.5,
                                                                      fontSize:
                                                                          11,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                DropdownWidget(
                                                    items: adminList,
                                                    selectItem: 'Select Admin',
                                                    title: 'Admin'),
                                                const SizedBox(
                                                  height: 4,
                                                ),
                                                TextFieldWidget(
                                                    labelText: 'ID :'),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      height: 40,
                                                      width: 280,
                                                      child: Stack(
                                                        children: [
                                                          GestureDetector(
                                                            child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              width: 138,
                                                              height: 32,
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .whiteColor,
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .blueColor),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              24)),
                                                              child: Text(
                                                                'Specific',
                                                                style: TextStyle(
                                                                    color: ColorConstant
                                                                        .blueColor,
                                                                    letterSpacing:
                                                                        0.5,
                                                                    fontSize:
                                                                        11,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 120,
                                                            child:
                                                                GestureDetector(
                                                              //

                                                              //
                                                              //
                                                              //
                                                              //
                                                              //
                                                              //

                                                              child: Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                width: 138,
                                                                height: 32,
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .whiteColor,
                                                                    border: Border.all(
                                                                        color: ColorConstant
                                                                            .blueColor),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            24)),
                                                                child: Text(
                                                                  'All Clear ',
                                                                  style: TextStyle(
                                                                      color: ColorConstant
                                                                          .blueColor,
                                                                      letterSpacing:
                                                                          0.5,
                                                                      fontSize:
                                                                          11,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                TextFieldWidget(
                                                    labelText:
                                                        'Recharge Back Amount'),
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                              ],
                                            ),
                                          ),
                                          AlertButton(buttonName: 'Add'),
                                          const SizedBox(height: 20),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 138,
                            height: 32,
                            decoration: BoxDecoration(
                                color: whiteColor2,
                                border: Border.all(color: blueColor2),
                                borderRadius: BorderRadius.circular(24)),
                            child: Text(
                              'Recharge Back',
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
                ),
              ),
              Container(
                height: 45,
                width: 225,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none),
                      fillColor: ColorConstant.searchColor,
                      filled: true,
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search store'),
                ),
              ),
            ],
          ),
          // Text("HELLO"),

          /// other

          //// naeem
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorConstant.whiteColor
                // color: ColorConstant.whiteColor,
                ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  text.length,
                  (index) => Text(
                        text[index],
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorConstant.whiteColor
                // color: ColorConstant.whiteColor,
                ),
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          text2.length,
                          (index) => Text(
                            text2[index],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          growable: true,
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
