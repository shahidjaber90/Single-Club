import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/alertButton.dart';
import 'package:singleclub/Widgets/dropdown_widget.dart';
import 'package:singleclub/Widgets/textfield_widget.dart';
import 'package:web_pagination/web_pagination.dart';

class StorPage extends StatefulWidget {
  StorPage({super.key});

  @override
  State<StorPage> createState() => _StorPageState();
}

class _StorPageState extends State<StorPage> {
  bool tap1 = false;
  bool tap2 = false;
  Color whiteColor = (Colors.white);
  Color blueColor = const Color(0xff2C50ED);
  Color whiteColor2 = (Colors.white);
  Color blueColor2 = const Color(0xff2C50ED);

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
    // { Icon(Icons.edit),}
    //  Icon(Icons.delete),
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
                "Store List",
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
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Container(
                                      width: 400,
                                      color: ColorConstant.whiteColor,
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
                                                    tap1
                                                        ? setState(() {
                                                            tap1 = !tap1;
                                                            whiteColor =
                                                                Colors.white;
                                                            blueColor = Color(
                                                                0xff2C50ED);
                                                          })
                                                        : setState(() {
                                                            tap1 = !tap1;
                                                            blueColor =
                                                                Colors.white;
                                                            whiteColor = Color(
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
                                          TextFieldWidget(labelText: 'ID :'),
                                          // const SizedBox(
                                          //   height: 16,
                                          // ),
                                          DropDown8(),
                                          DropdownWidget5(),
                                          TextFieldWidget(labelText: 'Expire'),
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
                                color: whiteColor,
                                border: Border.all(color: blueColor),
                                borderRadius: BorderRadius.circular(24)),
                            child: Text(
                              'Send Gift',
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
                                        height: 601,
                                        color: ColorConstant.whiteColor,
                                        child: SingleChildScrollView(
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
                                                      "Add Effect",
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
                                                                    Colors
                                                                        .white;
                                                                blueColor2 = Color(
                                                                    0xff2C50ED);
                                                              })
                                                            : setState(() {
                                                                tap2 = !tap2;
                                                                blueColor2 =
                                                                    Colors
                                                                        .white;
                                                                whiteColor2 = Color(
                                                                    0xff2C50ED);
                                                              });
                                                        Navigator.pop(context);
                                                      },
                                                      icon: const Icon(
                                                          Icons.close),
                                                      color: ColorConstant
                                                          .whiteColor,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 16,
                                              ),
                                              // DropdownWidget4(
                                              //     items: storeCategory,
                                              //     selectItem:
                                              //         'select Category'),
                                              DropDown8(),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              TextFieldWidget(
                                                  labelText: 'Name :'),
                                              TextFieldWidget(
                                                  labelText: 'Day :'),
                                              TextFieldWidget(
                                                  labelText: 'Price :'),
                                              TextFieldWidget(
                                                  labelText: 'Day :'),
                                              TextFieldWidget(
                                                  labelText: 'Price :'),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Container(
                                                height: 100,
                                                width: 140,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: ColorConstant
                                                        .whiteColor,
                                                    boxShadow: [
                                                      BoxShadow(
                                                          color: ColorConstant
                                                              .blueColor
                                                              .withOpacity(
                                                                  0.30),
                                                          offset: const Offset(
                                                              1, 2.0),
                                                          blurRadius: 2.0,
                                                          spreadRadius: 0.0),
                                                    ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8.0),
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        textAlign:
                                                            TextAlign.center,
                                                        "Upload File",
                                                        style: GoogleFonts.poppins(
                                                            color: ColorConstant
                                                                .blueColor,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
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
                                                        textAlign:
                                                            TextAlign.center,
                                                        "SVG/WEP",
                                                        style: GoogleFonts.poppins(
                                                            color: ColorConstant
                                                                .blueColor,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 12,
                                              ),
                                              AlertButton(buttonName: 'Add'),
                                              const SizedBox(
                                                height: 24,
                                              ),
                                            ],
                                          ),
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
                                'Add Effect',
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
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // color: Colors.yellow
                      color: ColorConstant.whiteColor,
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
                          Text(
                            text2[8],
                            style: GoogleFonts.poppins(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          Row(
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
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //////////////// pagination
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // pagination
                  WebPaginationWidget(
                    actualPage: 2,
                    countToDisplay: 3,
                    totalPages: 3,
                    buttonColor: ColorConstant.blueColor,
                    buttonTextColor: Colors.white,
                    onPageChange: (page) {
                      // setState(() {
                      //   actualPage = page;
                      // });
                    },
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
