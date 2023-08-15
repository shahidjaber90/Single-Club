import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/alertButton.dart';
import 'package:singleclub/Widgets/chip.dart';
import 'package:singleclub/Widgets/dropdown_widget.dart';
import 'package:singleclub/Widgets/textfield_Widegt3.dart';
import 'package:singleclub/Widgets/textfield_widget.dart';
import 'package:singleclub/Widgets/textfield_widget2.dart';

class AdsPage extends StatefulWidget {
  const AdsPage({super.key});

  @override
  State<AdsPage> createState() => _AdsPageState();
}

class _AdsPageState extends State<AdsPage> {
  bool tap3 = false;
  bool tap4 = false;
  Color whiteColor3 = (Colors.white);
  Color blueColor3 = const Color(0xff2C50ED);
  Color whiteColor4 = (Colors.white);
  Color blueColor4 = const Color(0xff2C50ED);

  final List text = [
    "User Name",
    "ld Number",
    "Victim Name",
    "ld Serial ",
    "Category",
    "Document",
    "Date/Time",
    "Decision",
    "Action",
  ];

  final List text2 = [
    "King of Kings",
    "787546",
    "Ashraf",
    "786522",
    "Hate speech",
    "Show",
    "24-Feb-2023",
    " Name",
    " Active\nBan\nDevice Ban",
  ];
  final List list3 = [
    "Date",
    "Transictin ld",
    "Type",
    "Rate",
    "Value",
    "Return",
    "Status",
  ];
  List<String> dates = [
    '23-4-2023',
    '15-8-2023',
    '7-11-2023',
    '2-2-2023',
    '10-6-2023',
  ];
  List tid = [
    "032123",
    "032123",
    "032123",
    "032123",
    "032123",
  ];
  List amount = [
    "\$400",
    "\$55",
    "\$40",
    "\$30",
    "\$40",
  ];
  List status = [
    "Completed",
    "Completed",
    "Completed",
    "Ended",
    "Completed",
  ];
  List rreturn = [
    "#03023",
    "#03123",
    "#32100",
    "#21000",
    "#18000",
  ];
  List rate = [
    "Basic",
    "Standard",
    "Basic",
    "Basic",
    "Basic",
  ];
  List images = [
    "assets/icons/mastercard.png",
    "assets/icons/paypal.png",
    "assets/icons/mastercard.png",
    "assets/icons/paypal.png",
    "assets/icons/mastercard.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: ColorConstant.whiteColor,
        elevation: 0,
        title: GestureDetector(
          onTap: () {
            tap3
                ? setState(() {
                    tap3 = !tap3;
                    whiteColor3 = Colors.white;
                    blueColor3 = Color(0xff2C50ED);
                  })
                : setState(() {
                    tap3 = !tap3;
                    blueColor3 = Colors.white;
                    whiteColor3 = Color(0xff2C50ED);
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
                    height: MediaQuery.of(context).size.height / 1.2,
                    color: ColorConstant.whiteColor,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            color: ColorConstant.blueColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.abc,
                                  color: ColorConstant.blueColor,
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  "Manage Ads",
                                  style: GoogleFonts.poppins(
                                      color: ColorConstant.whiteColor,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600),
                                ),
                                IconButton(
                                    onPressed: () {
                                      tap3
                                          ? setState(() {
                                              tap3 = !tap3;
                                              whiteColor3 = Colors.white;
                                              blueColor3 = Color(0xff2C50ED);
                                            })
                                          : setState(() {
                                              tap3 = !tap3;
                                              blueColor3 = Colors.white;
                                              whiteColor3 = Color(0xff2C50ED);
                                            });
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.close,
                                      color: ColorConstant.whiteColor,
                                    ))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      width: 280,
                                      child: Stack(
                                        children: [
                                          StatefulBuilder(
                                            builder: (context, setState) =>
                                                GestureDetector(
                                              onTap: () {
                                                tap3
                                                    ? setState(() {
                                                        tap3 = !tap3;
                                                        whiteColor3 =
                                                            Colors.white;
                                                        blueColor3 =
                                                            Color(0xff2C50ED);
                                                      })
                                                    : setState(() {
                                                        tap3 = !tap3;
                                                        blueColor3 =
                                                            Colors.white;
                                                        whiteColor3 =
                                                            Color(0xff2C50ED);
                                                      });
                                                this.setState(() {});
                                              },
                                              child: Container(
                                                alignment: Alignment.center,
                                                width: 138,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                    color: whiteColor3,
                                                    border: Border.all(
                                                        color: blueColor3),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24)),
                                                child: Text(
                                                  'Profile',
                                                  style: TextStyle(
                                                      color: blueColor3,
                                                      letterSpacing: 0.5,
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              left: 100,
                                              child: StatefulBuilder(
                                                builder: (context, setState) =>
                                                    GestureDetector(
                                                  onTap: () {
                                                    tap4
                                                        ? setState(() {
                                                            tap4 = !tap4;
                                                            whiteColor4 =
                                                                Colors.white;
                                                            blueColor4 = Color(
                                                                0xff2C50ED);
                                                          })
                                                        : setState(() {
                                                            tap4 = !tap4;
                                                            blueColor4 =
                                                                Colors.white;
                                                            whiteColor4 = Color(
                                                                0xff2C50ED);
                                                          });
                                                    this.setState(() {});
                                                  },
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    width: 138,
                                                    height: 32,
                                                    decoration: BoxDecoration(
                                                        color: whiteColor4,
                                                        border: Border.all(
                                                            color: blueColor4),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(24)),
                                                    child: Text(
                                                      'Post',
                                                      style: TextStyle(
                                                          color: blueColor4,
                                                          letterSpacing: 0.5,
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                  ),
                                                ),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                DropdownWidget4(
                                  items: adsList,
                                  selectItem: 'Select Location',
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFieldWidget(labelText: 'Total User'),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Country Population",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                    Text(
                                      "Division Population",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TextFieldWidget3(labelText: ""),
                                    TextFieldWidget3(labelText: ""),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "District Population",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                    Text(
                                      "Upzila Population",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TextFieldWidget3(labelText: ""),
                                    TextFieldWidget3(labelText: ""),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Male Population",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                    Text(
                                      "Female Population",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TextFieldWidget3(labelText: ""),
                                    TextFieldWidget3(labelText: ""),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const ChipWidget(text: 'For Idea'),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Reach",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                    Text(
                                      "Amount",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TextFieldWidget3(labelText: ""),
                                    TextFieldWidget3(labelText: ""),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                AlertButton(buttonName: "Check%"),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Result",
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Minimun Audience",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                    Text(
                                      "Menimun Audience",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TextFieldWidget3(labelText: ""),
                                    TextFieldWidget3(labelText: ""),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Male",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                    Text(
                                      "Female",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ChipWidget(text: "30x"),
                                    ChipWidget(text: "30x")
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
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
            );
          },
          child: Container(
            alignment: Alignment.center,
            width: 138,
            height: 32,
            decoration: BoxDecoration(
                color: whiteColor3,
                border: Border.all(color: blueColor3),
                borderRadius: BorderRadius.circular(24)),
            child: Text(
              'Manage Ads',
              style: TextStyle(
                  color: blueColor3,
                  letterSpacing: 0.5,
                  fontSize: 11,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
      backgroundColor: ColorConstant.whiteColor,
      body: Column(
        children: [
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.98,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorConstant.whiteColor
                // color: ColorConstant.whiteColor,
                ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    text.length,
                    (index) => Text(
                          text[index],
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 70,
            width: MediaQuery.of(context).size.width * 0.98,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorConstant.whiteColor
                // color: ColorConstant.whiteColor,
                ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text2[0],
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      text2[1],
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      text2[2],
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      text2[3],
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      text2[4],
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                content: Container(
                                    height: 480,
                                    width: 410,
                                    decoration: BoxDecoration(
                                        color: ColorConstant.whiteColor,
                                        border: Border.all(
                                            width: 2,
                                            color: ColorConstant.blueColor)),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 26,
                                          width: 410,
                                          color: ColorConstant.blueColor,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                                  horizontal: 31)
                                              .copyWith(top: 40),
                                          child: Container(
                                            height: 288,
                                            width: 400,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/complain.png'))),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Container(
                                            alignment: Alignment.center,
                                            // height: 288,
                                            width: 380,
                                            child: Text(
                                              'Music Time With My Chill ModMusic Time \nWith My Chill ModMusic Time With My Chill Mod',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w300,
                                                  letterSpacing: 0.5),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              );
                            });
                      },
                      child: Container(
                        color: ColorConstant.blueColor,
                        height: 30,
                        width: 80,
                        child: Center(
                          child: Text(
                            text2[5],
                            style: GoogleFonts.poppins(
                                color: ColorConstant.whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      text2[6],
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      text2[7],
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      text2[8],
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ]),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
