import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Utils/colors.dart';
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
                    width: 280,
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
                                    color: ColorConstant.whiteColor,
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
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 40,
                                              width: 280,
                                              child: Stack(
                                                children: [
                                                  StatefulBuilder(
                                                    builder:
                                                        (context, setState) =>
                                                            GestureDetector(
                                                      onTap: () {
                                                        tap3
                                                            ? setState(() {
                                                                tap3 = !tap3;
                                                                whiteColor3 =
                                                                    Colors
                                                                        .white;
                                                                blueColor3 = Color(
                                                                    0xff2C50ED);
                                                              })
                                                            : setState(() {
                                                                tap3 = !tap3;
                                                                blueColor3 =
                                                                    Colors
                                                                        .white;
                                                                whiteColor3 = Color(
                                                                    0xff2C50ED);
                                                              });
                                                        this.setState(() {});
                                                      },
                                                      child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        width: 138,
                                                        height: 32,
                                                        decoration: BoxDecoration(
                                                            color: whiteColor3,
                                                            border: Border.all(
                                                                color:
                                                                    blueColor3),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24)),
                                                        child: Text(
                                                          'Add Gift',
                                                          style: TextStyle(
                                                              color: blueColor3,
                                                              letterSpacing:
                                                                  0.5,
                                                              fontSize: 11,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 100,
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        tap4
                                                            ? setState(() {
                                                                tap4 = !tap4;
                                                                whiteColor4 =
                                                                    Colors
                                                                        .white;
                                                                blueColor4 = Color(
                                                                    0xff2C50ED);
                                                              })
                                                            : setState(() {
                                                                tap4 = !tap4;
                                                                blueColor4 =
                                                                    Colors
                                                                        .white;
                                                                whiteColor4 = Color(
                                                                    0xff2C50ED);
                                                              });
                                                        this.setState(() {});

                                                        showDialog(
                                                          barrierDismissible:
                                                              false,
                                                          context: context,
                                                          builder: (context) =>
                                                              AlertDialog(
                                                            scrollable: true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            elevation: 0,
                                                            actions: [
                                                              Container(
                                                                width: 400,
                                                                height: 641,
                                                                color: ColorConstant
                                                                    .whiteColor,
                                                                child:
                                                                    SingleChildScrollView(
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                        color: ColorConstant
                                                                            .blueColor,
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text(
                                                                              "",
                                                                              style: GoogleFonts.poppins(color: ColorConstant.whiteColor, fontSize: 30, fontWeight: FontWeight.w600),
                                                                            ),
                                                                            Text(
                                                                              "lucky Gift",
                                                                              style: GoogleFonts.poppins(color: ColorConstant.whiteColor, fontSize: 30, fontWeight: FontWeight.w600),
                                                                            ),
                                                                            IconButton(
                                                                              onPressed: () {
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
                                                                                Navigator.pop(context);
                                                                              },
                                                                              icon: const Icon(Icons.close),
                                                                              color: ColorConstant.whiteColor,
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      const SizedBox(
                                                                        height:
                                                                            5,
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.only(left: 10.0),
                                                                        child:
                                                                            Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            DropdownWidget3(
                                                                              title: 'Choose Gift',
                                                                              hintText: 'Select Gift',
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 10,
                                                                            ),
                                                                            Text(
                                                                              // textAlign: TextAlign.center,
                                                                              "Comission",
                                                                              style: GoogleFonts.inter(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 10,
                                                                            ),
                                                                            const Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                ChipWidget(text: "Minimum 20%"),
                                                                                ChipWidget(text: "Minimum 30%"),
                                                                              ],
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 10,
                                                                            ),
                                                                            Text(
                                                                              // textAlign: TextAlign.center,
                                                                              "Single Sent Time",
                                                                              style: GoogleFonts.inter(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 10,
                                                                            ),
                                                                            const Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                ChipWidget(text: "Minimum 10x"),
                                                                                ChipWidget(text: "Minimum 150x"),
                                                                              ],
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 10,
                                                                            ),
                                                                            Text(
                                                                              // textAlign: TextAlign.center,
                                                                              "Single Back Time",
                                                                              style: GoogleFonts.inter(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 10,
                                                                            ),
                                                                            const Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                ChipWidget(text: "4x"),
                                                                                ChipWidget(text: "10x"),
                                                                                ChipWidget(text: "22x"),
                                                                                ChipWidget(text: "50x"),
                                                                              ],
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 10,
                                                                            ),
                                                                            const Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                ChipWidget(text: "70x"),
                                                                                ChipWidget(text: "85x"),
                                                                                ChipWidget(text: "100x"),
                                                                                ChipWidget(text: "120x"),
                                                                              ],
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 10,
                                                                            ),
                                                                            Text(
                                                                              // textAlign: TextAlign.center,
                                                                              "Combo Sent Time",
                                                                              style: GoogleFonts.inter(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 10,
                                                                            ),
                                                                            const Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                ChipWidget(text: "Minimum 5x"),
                                                                                ChipWidget(text: "Minimum 30x"),
                                                                              ],
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 10,
                                                                            ),
                                                                            Text(
                                                                              // textAlign: TextAlign.center,
                                                                              "Combo Back Time",
                                                                              style: GoogleFonts.inter(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 10,
                                                                            ),
                                                                            const Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                ChipWidget(text: "4x"),
                                                                                ChipWidget(text: "9x"),
                                                                                ChipWidget(text: "16x"),
                                                                                ChipWidget(text: "25x"),
                                                                              ],
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 10,
                                                                            ),
                                                                            Text(
                                                                              // textAlign: TextAlign.center,
                                                                              "Super Jackpot Store",
                                                                              style: GoogleFonts.inter(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 10,
                                                                            ),
                                                                            const Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                ChipWidget(text: "Minimum 2 mnt"),
                                                                                ChipWidget(text: "Minimum 20 mnt"),
                                                                              ],
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 5,
                                                                            ),
                                                                            const Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                ChipWidget(text: "Minimum 5 mnt"),
                                                                                ChipWidget(text: "Minimum 5 0mnt"),
                                                                              ],
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 5,
                                                                            ),
                                                                            const Row(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                SizedBox(
                                                                                  width: 37,
                                                                                ),
                                                                                ChipWidget(text: "Select icon"),
                                                                              ],
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 10,
                                                                            ),
                                                                            Text(
                                                                              // textAlign: TextAlign.center,
                                                                              "Super Jackpot Back",
                                                                              style: GoogleFonts.inter(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 10,
                                                                            ),
                                                                            const Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                ChipWidget(text: "400x"),
                                                                                ChipWidget(text: "480x"),
                                                                                ChipWidget(text: "550x"),
                                                                                ChipWidget(text: "680x"),
                                                                              ],
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 15,
                                                                            ),
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                AlertButton(buttonName: "Save"),
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
                                                        alignment:
                                                            Alignment.center,
                                                        width: 138,
                                                        height: 32,
                                                        decoration: BoxDecoration(
                                                            color: whiteColor4,
                                                            border: Border.all(
                                                                color:
                                                                    blueColor4),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24)),
                                                        child: Text(
                                                          'Lucky Gift',
                                                          style: TextStyle(
                                                              color: blueColor4,
                                                              letterSpacing:
                                                                  0.5,
                                                              fontSize: 11,
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
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        TextFieldWidget(labelText: 'Name :'),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        DropdownWidget4(
                                            items: giftCategory,
                                            selectItem: 'select Category'),
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
