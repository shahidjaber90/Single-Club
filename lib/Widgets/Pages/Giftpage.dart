import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/alertButton.dart';
import 'package:singleclub/Widgets/chip.dart';
import 'package:singleclub/Widgets/textfield_widget.dart';

class GiftPage extends StatefulWidget {
  GiftPage({super.key});

  @override
  State<GiftPage> createState() => _GiftPageState();
}

class _GiftPageState extends State<GiftPage> {
  bool isButton = false;
  Color textColor = const Color(0xFF2C50ED);
  Color color = const Color(0xFFFFFFFF);
  final List text = [
    "SL",
    "Product",
    "Name",
    "Category",
    "7 Day",
    "Price",
    "Admin Name",
    "Category",
    "Date/Time",
    "Action",
  ];

  final List text2 = [
    "01",
    "image",
    "Contenet here\nmaking",
    "Entry",
    "15/30 days",
    "60k/110k",
    "King of Kings",
    "Master Point",
    "14-Feb-2023\n15:39",
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
                            setState(() {
                              color = Color(0xFF2C50ED);
                              textColor = Color(0xffFFFFFF);
                            });
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                scrollable: true,
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                actions: [
                                  Container(
                                    // width: MediaQuery.of(context).size.width *
                                    //     0.30,
                                    color: ColorConstant.whiteColor,
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
                                                "Send Gift",
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
                                                  setState(() {
                                                    textColor =
                                                        Color(0xFF2C50ED);
                                                    color = Color(0xffFFFFFF);
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
                                                  GestureDetector(
                                                    child: Container(
                                                      alignment:
                                                          Alignment.center,
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
                                                        'Add Gift',
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .blueColor,
                                                            letterSpacing: 0.5,
                                                            fontSize: 11,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 120,
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        showDialog(
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
                                                                // width: MediaQuery.of(
                                                                //             context)
                                                                //         .size
                                                                //         .width *
                                                                //     0.30,
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
                                                                        // height: 53,
                                                                        // width: double.infinity,
                                                                        color: ColorConstant
                                                                            .blueColor,
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Text(
                                                                              // textAlign: TextAlign.center,
                                                                              "lucky Gift",
                                                                              style: GoogleFonts.poppins(color: ColorConstant.whiteColor, fontSize: 30, fontWeight: FontWeight.w600),
                                                                            ),
                                                                            const SizedBox(
                                                                              width: 60,
                                                                            ),
                                                                            IconButton(
                                                                              onPressed: () {
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
                                                                            Text(
                                                                              // textAlign: TextAlign.center,
                                                                              "Choose Gift",
                                                                              style: GoogleFonts.inter(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 10,
                                                                            ),
                                                                            TextFieldWidget(labelText: "Select Gift"),
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
                                                            color: ColorConstant
                                                                .blueColor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24)),
                                                        child: Text(
                                                          'Lucky Gift',
                                                          style: TextStyle(
                                                              color: ColorConstant
                                                                  .whiteColor,
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
                                        TextFieldWidget(labelText: ' Category'),
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
                                          color: ColorConstant.whiteColor,
                                          child: Column(
                                            children: [
                                              Text(
                                                textAlign: TextAlign.center,
                                                "Upload File",
                                                style: GoogleFonts.poppins(
                                                    color:
                                                        ColorConstant.blueColor,
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
                                                    color:
                                                        ColorConstant.blueColor,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
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
                                color: color,
                                border:
                                    Border.all(color: ColorConstant.blueColor),
                                borderRadius: BorderRadius.circular(24)),
                            child: Text(
                              'Add Gift',
                              style: TextStyle(
                                  color: textColor,
                                  letterSpacing: 0.5,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 120,
                          child: Container(
                            alignment: Alignment.center,
                            width: 138,
                            height: 32,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorConstant.blueColor,
                                ),
                                color: ColorConstant.whiteColor,
                                borderRadius: BorderRadius.circular(24)),
                            child: Text(
                              'Send Gift',
                              style: TextStyle(
                                  color: ColorConstant.blueColor,
                                  letterSpacing: 0.5,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700),
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
          actions: [
            Container(
              height: 45,
              width: 225,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide.none),
                    fillColor: ColorConstant.searchColor,
                    filled: true,
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search store'),
              ),
            ),
          ],
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
                            children: [
                              Text(
                                text2[0],
                                style: GoogleFonts.poppins(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 50,
                                width: 50,
                                child:
                                    Image.asset("assets/images/hondaCBR.png"),
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
                            ]),
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
