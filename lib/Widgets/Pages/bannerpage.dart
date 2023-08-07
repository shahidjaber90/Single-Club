import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/alertButton.dart';

import '../textfield_widget.dart';

class BannerView extends StatefulWidget {
  const BannerView({super.key});

  @override
  State<BannerView> createState() => _BannerViewState();
}

class _BannerViewState extends State<BannerView> {
  bool tap1 = false;
  Color whiteColor = (Colors.white);
  Color blueColor = const Color(0xff2C50ED);
  final List text = [
    "Level Name",
    "Level Icon",
    "Coin require",
    "Show",
    "Admin Name",
    "Category",
    "Date/Time",
    "Action",
  ];
  final List text2 = [
    "01",
    "image",
    "60k/110k",
    "off"
        "King of Kings",
    "Master Panel",
    "24/72 Hours",
    "Edit",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 300,
        backgroundColor: ColorConstant.whiteColor,
        elevation: 0,
        title: GestureDetector(
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
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // height: 53,
                          // width: double.infinity,
                          color: ColorConstant.blueColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "Add Banner",
                                style: GoogleFonts.poppins(
                                    color: ColorConstant.whiteColor,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                width: 60,
                              ),
                              IconButton(
                                onPressed: () {
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 40,
                              width: 280,
                              child: Stack(
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 138,
                                      height: 32,
                                      decoration: BoxDecoration(
                                          color: ColorConstant.whiteColor,
                                          border: Border.all(
                                              color: ColorConstant.blueColor),
                                          borderRadius:
                                              BorderRadius.circular(24)),
                                      child: Text(
                                        'Add Home',
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
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 138,
                                      height: 32,
                                      decoration: BoxDecoration(
                                          color: ColorConstant.whiteColor,
                                          border: Border.all(
                                              color: ColorConstant.blueColor),
                                          borderRadius:
                                              BorderRadius.circular(24)),
                                      child: Text(
                                        'Add opening',
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
                        const SizedBox(
                          height: 15,
                        ),
                        TextFieldWidget(labelText: 'Name:'),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFieldWidget(labelText: 'Number :'),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFieldWidget(labelText: 'Link'),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 100,
                          width: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConstant.whiteColor,
                              boxShadow: [
                                BoxShadow(
                                    color: ColorConstant.blueColor
                                        .withOpacity(0.30),
                                    offset: const Offset(1, 2.0),
                                    blurRadius: 2.0,
                                    spreadRadius: 0.0),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Column(
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  "Upload File",
                                  style: GoogleFonts.poppins(
                                      color: ColorConstant.blueColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
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
                                      color: ColorConstant.blueColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
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
                          height: 50,
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
              'Send Banner',
              style: TextStyle(
                  color: blueColor,
                  letterSpacing: 0.5,
                  fontSize: 11,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
      body: Column(
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
            height: 80,
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
                            height: 65,
                            width: 50,
                            child: Image.asset("assets/images/storebike.png"),
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
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.edit, color: ColorConstant.blueColor),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.delete, color: ColorConstant.blueColor),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
