import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/admin_field_heading.dart';
import 'package:singleclub/Widgets/admin_textfiled_widget2.dart';
import 'package:singleclub/Widgets/alertButton.dart';
import 'package:singleclub/Widgets/chip.dart';
import 'package:singleclub/Widgets/dropdown_widget.dart';
import 'package:singleclub/Widgets/textfield_widget.dart';

class GiftPage extends StatefulWidget {
  GiftPage({super.key});

  @override
  State<GiftPage> createState() => _GiftPageState();
}

class _GiftPageState extends State<GiftPage> {
  bool tap1 = false;
  bool tap2 = false;
  bool tap3 = false;
  bool tap4 = false;
  Color whiteColor = (Colors.white);
  Color blueColor = const Color(0xff2C50ED);
  Color whiteColor2 = (Colors.white);
  Color blueColor2 = const Color(0xff2C50ED);
  Color whiteColor3 = (Colors.white);
  Color blueColor3 = const Color(0xff2C50ED);
  Color whiteColor4 = (Colors.white);
  Color blueColor4 = const Color(0xff2C50ED);
  final List text = [
    "SL",
    "Product",
    "Name",
    "Category",
    "Price",
    "Tax",
    "Admin Name",
    "Category",
    "Date/Time",
    "Action",
  ];

  final List text2 = [
    "01",
    "Contenet here\nmaking",
    "Entry",
    "25,000",
    "10%",
    "King of Kings",
    "Master Panal",
    "14-Feb-2023\n05:45",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          toolbarHeight: 350,
          backgroundColor: ColorConstant.whiteColor,
          elevation: 0,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Gift List",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                "286 items are already in store",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 40,
                    width: 360,
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
                                    decoration: BoxDecoration(
                                        color: ColorConstant.whiteColor,
                                        border: Border.all(
                                            color: ColorConstant.blueColor,
                                            width: 2)),
                                    child: Column(
                                      children: [
                                        Container(
                                          color: ColorConstant.blueColor,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                                "Send Gift",
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
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        TextFieldWidget(labelText: 'Name :'),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        DropdownWidget4(
                                            items: giftCategory,
                                            selectItem: 'Select Category'),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        TextFieldWidget(labelText: 'Price'),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        TextFieldWidget(labelText: 'Tax%'),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Container(
                                          height: 100,
                                          width: 140,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: ColorConstant.whiteColor,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: ColorConstant
                                                        .blueColor
                                                        .withOpacity(0.30),
                                                    offset:
                                                        const Offset(1, 2.0),
                                                    blurRadius: 2.0,
                                                    spreadRadius: 0.0),
                                              ]),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Column(
                                              children: [
                                                Text(
                                                  textAlign: TextAlign.center,
                                                  "Upload File",
                                                  style: GoogleFonts.poppins(
                                                      color: ColorConstant
                                                          .blueColor,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                SizedBox(
                                                  height: 50,
                                                  width: 50,
                                                  child: Image.asset(
                                                    "assets/icons/cloudupload.png",
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                Text(
                                                  textAlign: TextAlign.center,
                                                  "SVG/WEP",
                                                  style: GoogleFonts.poppins(
                                                      color: ColorConstant
                                                          .blueColor,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        AlertButton(buttonName: 'Add'),
                                        const SizedBox(
                                          height: 24,
                                        ),
                                      ],
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
                              'Add Gift',
                              style: TextStyle(
                                  color: blueColor,
                                  letterSpacing: 0.5,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),

                        // 3rd
                        Positioned(
                          left: 210,
                          child: GestureDetector(
                            onTap: () {
                              tap4
                                  ? setState(() {
                                      tap4 = !tap4;
                                      whiteColor4 = Colors.white;
                                      blueColor4 = Color(0xff2C50ED);
                                    })
                                  : setState(() {
                                      tap4 = !tap4;
                                      blueColor4 = Colors.white;
                                      whiteColor4 = Color(0xff2C50ED);
                                    });
                              this.setState(() {});

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
                                      decoration: BoxDecoration(
                                          color: ColorConstant.whiteColor,
                                          border: Border.all(
                                              color: ColorConstant.blueColor,
                                              width: 2)),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              color: ColorConstant.blueColor,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .accessibility_new_rounded,
                                                    color:
                                                        ColorConstant.blueColor,
                                                  ),
                                                  Text(
                                                    "Lucky Gift",
                                                    style: GoogleFonts.poppins(
                                                        color: ColorConstant
                                                            .whiteColor,
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {
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
                                                      Navigator.pop(context);
                                                    },
                                                    icon:
                                                        const Icon(Icons.close),
                                                    color: ColorConstant
                                                        .whiteColor,
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  DropdownWidget3(
                                                    title: 'Choose Gift',
                                                    hintText: 'Select Gift',
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 20),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                            width: 150,
                                                            child: AdminFieldHeading(
                                                                headingText:
                                                                    'Commission')),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 20),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        AdminTextFieldWidget3(
                                                          width: 150,
                                                          labelText:
                                                              'Minimum 20 %',
                                                        ),
                                                        AdminTextFieldWidget3(
                                                          width: 150,
                                                          labelText:
                                                              'Maximam 30 %',
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 20),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                            width: 150,
                                                            child: AdminFieldHeading(
                                                                headingText:
                                                                    'Single Send Time')),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 20),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        AdminTextFieldWidget3(
                                                          width: 150,
                                                          labelText:
                                                              'Minimum 10 x',
                                                        ),
                                                        AdminTextFieldWidget3(
                                                          width: 150,
                                                          labelText:
                                                              'Maximam 150 x',
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 20),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                            width: 150,
                                                            child: AdminFieldHeading(
                                                                headingText:
                                                                    'Single Back Time')),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 20),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        AdminTextFieldWidget3(
                                                          width: 75,
                                                          labelText: '4 x',
                                                        ),
                                                        AdminTextFieldWidget3(
                                                          width: 75,
                                                          labelText: '10 x',
                                                        ),
                                                        AdminTextFieldWidget3(
                                                          width: 75,
                                                          labelText: '22 x',
                                                        ),
                                                        AdminTextFieldWidget3(
                                                          width: 75,
                                                          labelText: '50 x',
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                                .symmetric(
                                                            horizontal: 20)
                                                        .copyWith(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        AdminTextFieldWidget3(
                                                          width: 75,
                                                          labelText: '70 x',
                                                        ),
                                                        AdminTextFieldWidget3(
                                                          width: 75,
                                                          labelText: '85 x',
                                                        ),
                                                        AdminTextFieldWidget3(
                                                          width: 75,
                                                          labelText: '100 x',
                                                        ),
                                                        AdminTextFieldWidget3(
                                                          width: 75,
                                                          labelText: '120 x',
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 20),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                            width: 150,
                                                            child: AdminFieldHeading(
                                                                headingText:
                                                                    'Combo Send Time')),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 20),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        AdminTextFieldWidget3(
                                                          width: 150,
                                                          labelText:
                                                              'Minimum 5 x',
                                                        ),
                                                        AdminTextFieldWidget3(
                                                          width: 150,
                                                          labelText:
                                                              'Maximam 30 x',
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 20),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                            width: 200,
                                                            child: AdminFieldHeading(
                                                                headingText:
                                                                    'Supper Jackpot Store')),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 20),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        AdminTextFieldWidget3(
                                                          width: 150,
                                                          labelText:
                                                              'Minimum 2 Mnt',
                                                        ),
                                                        AdminTextFieldWidget3(
                                                          width: 150,
                                                          labelText:
                                                              'Maximam 20 Mnt',
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                                .symmetric(
                                                            horizontal: 20)
                                                        .copyWith(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        AdminTextFieldWidget3(
                                                          width: 150,
                                                          labelText:
                                                              'Minimum 5 Mnt',
                                                        ),
                                                        AdminTextFieldWidget3(
                                                          width: 150,
                                                          labelText:
                                                              'Maximam 50 Mnt',
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                                .symmetric(
                                                            horizontal: 20)
                                                        .copyWith(top: 16),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                            width: 200,
                                                            child: AdminFieldHeading(
                                                                headingText:
                                                                    'Supper Jackpot Back')),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 20),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        AdminTextFieldWidget3(
                                                          width: 75,
                                                          labelText: '400 x',
                                                        ),
                                                        AdminTextFieldWidget3(
                                                          width: 75,
                                                          labelText: '480 x',
                                                        ),
                                                        AdminTextFieldWidget3(
                                                          width: 75,
                                                          labelText: '550 x',
                                                        ),
                                                        AdminTextFieldWidget3(
                                                          width: 75,
                                                          labelText: '680 x',
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 22,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      AlertButton(
                                                          buttonName: "Save"),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 24,
                                                  ),
                                                ],
                                              ),
                                            )
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
                                  color: whiteColor4,
                                  border: Border.all(color: blueColor4),
                                  borderRadius: BorderRadius.circular(24)),
                              child: Text(
                                'Lucky Gift',
                                style: TextStyle(
                                    color: blueColor4,
                                    letterSpacing: 0.5,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                        // 2nd
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
                              this.setState(() {});

                              showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (context) => AlertDialog(
                                  scrollable: true,
                                  backgroundColor: Colors.transparent,
                                  elevation: 0,
                                  actions: [
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        width: 400,
                                        decoration: BoxDecoration(
                                            color: ColorConstant.whiteColor,
                                            border: Border.all(
                                                color: ColorConstant.blueColor,
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
                                                    "Send Gift",
                                                    style: GoogleFonts.poppins(
                                                        color: ColorConstant
                                                            .whiteColor,
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.w600),
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
                                                    icon:
                                                        const Icon(Icons.close),
                                                    color: ColorConstant
                                                        .whiteColor,
                                                  )
                                                ],
                                              ),
                                            ),
                                            TextFieldWidget(labelText: 'ID :'),
                                            // const SizedBox(
                                            //   height: 16,
                                            // ),
                                            DropDown8(),
                                            DropdownWidget5(),
                                            TextFieldWidget(
                                                labelText: 'Expire'),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            AlertButton(buttonName: 'Send'),
                                            const SizedBox(
                                              height: 24,
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
                                  border: Border.all(
                                    color: blueColor2,
                                  ),
                                  color: whiteColor2,
                                  borderRadius: BorderRadius.circular(24)),
                              child: Text(
                                'Send Gift',
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
                ],
              ),
            ],
          ),
          // actions: [
          //   Container(
          //     height: 45,
          //     width: 225,
          //     child: TextFormField(
          //       decoration: InputDecoration(
          //           border: OutlineInputBorder(
          //               borderRadius: BorderRadius.circular(6),
          //               borderSide: BorderSide.none),
          //           fillColor: ColorConstant.searchColor,
          //           filled: true,
          //           prefixIcon: const Icon(Icons.search),
          //           hintText: 'Search store'),
          //     ),
          //   ),
          // ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
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
                height: 60,
                width: MediaQuery.of(context).size.width,
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
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset("assets/images/hondaCBR.png"),
                      ),
                      Text(
                        text2[1],
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        text2[2],
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        text2[3],
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        text2[4],
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        text2[5],
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        text2[6],
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        text2[7],
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.edit,
                            color: ColorConstant.blueColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.delete,
                            color: ColorConstant.blueColor,
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
    );
  }
}
