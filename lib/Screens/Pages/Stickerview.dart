import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/alertButton.dart';
import 'package:singleclub/Widgets/alertbutton2.dart';
import 'package:singleclub/Widgets/dropdown_widget.dart';

import '../../Widgets/textfield_widget.dart';

class StickerView extends StatefulWidget {
  const StickerView({super.key});

  @override
  State<StickerView> createState() => _StickerViewState();
}

class _StickerViewState extends State<StickerView> {
  bool tap1 = false;
  bool tap3 = false;
  bool tap4 = false;
  Color whiteColor = (Colors.white);
  Color blueColor = const Color(0xff2C50ED);
  Color whiteColor3 = (Colors.white);
  Color blueColor3 = const Color(0xff2C50ED);
  Color whiteColor4 = (Colors.white);
  Color blueColor4 = const Color(0xff2C50ED);
  bool forpop = false;
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
                    decoration: BoxDecoration(
                        color: ColorConstant.whiteColor,
                        border: Border.all(
                            color: ColorConstant.blueColor, width: 2)),
                    child: Column(
                      children: [
                        Container(
                          color: ColorConstant.blueColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.account_balance_sharp,
                                color: ColorConstant.blueColor,
                              ),
                              Text(
                                "Add Sticker",
                                style: GoogleFonts.poppins(
                                    color: ColorConstant.whiteColor,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600),
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
                          height: 24,
                        ),
                        DropdownWidget4(
                            items: stickerList, selectItem: 'Category'),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFieldWidget(labelText: 'Name'),
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
                        GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  content: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Wrap(
                                        // crossAxisAlignment:
                                        spacing: 15,
                                        //     CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                "Are you sure ?",
                                                style: GoogleFonts.poppins(
                                                    color:
                                                        ColorConstant.blueColor,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              SizedBox(
                                                height: 60,
                                                width: 60,
                                                child: Image.asset(
                                                    "Assets/icons/wpf_ask-question.png"),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  StatefulBuilder(
                                                    builder: (context,
                                                            setState) =>
                                                        GestureDetector(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                              showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) =>
                                                                        AlertDialog(
                                                                  content:
                                                                      Container(
                                                                    height: MediaQuery.of(context)
                                                                            .size
                                                                            .height /
                                                                        5,
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Wrap(
                                                                        children: [
                                                                          Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                "Successful",
                                                                                style: GoogleFonts.poppins(color: Colors.green, fontSize: 20, fontWeight: FontWeight.w500),
                                                                              ),
                                                                              const SizedBox(
                                                                                height: 15,
                                                                              ),
                                                                              SizedBox(
                                                                                height: 60,
                                                                                width: 60,
                                                                                child: Image.asset("Assets/icons/Successful.png"),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            child: AlertButton2(
                                                                buttonName:
                                                                    "Yes")),
                                                  ),
                                                  StatefulBuilder(
                                                    builder: (context,
                                                            setState) =>
                                                        GestureDetector(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                              showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) =>
                                                                        AlertDialog(
                                                                  content:
                                                                      Container(
                                                                    height: MediaQuery.of(context)
                                                                            .size
                                                                            .height /
                                                                        5,
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Wrap(
                                                                        children: [
                                                                          Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                "Successful",
                                                                                style: GoogleFonts.poppins(color: Colors.red, fontSize: 20, fontWeight: FontWeight.w500),
                                                                              ),
                                                                              const SizedBox(
                                                                                height: 15,
                                                                              ),
                                                                              SizedBox(
                                                                                height: 60,
                                                                                width: 60,
                                                                                child: Image.asset("Assets/icons/delete.png"),
                                                                              ),
                                                                            ],
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            child: AlertButton2(
                                                                buttonName:
                                                                    "No")),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: AlertButton2(buttonName: 'Add')),
                        const SizedBox(
                          height: 20,
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
              'Add Sticker',
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
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        growable: true,
                      ),
                    ),
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
    );
  }
}
