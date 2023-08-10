import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Widgets/alertButton.dart';
import 'package:singleclub/Widgets/dropdown_widget.dart';

import '../../Utils/colors.dart';
import '../../Widgets/textfield_widget.dart';

class ClearPage extends StatefulWidget {
  const ClearPage({super.key});

  @override
  State<ClearPage> createState() => _ClearPageState();
}

class _ClearPageState extends State<ClearPage> {
  bool tap3 = false;
  bool tap4 = false;
  Color whiteColor3 = (Colors.white);
  Color blueColor3 = const Color(0xff2C50ED);
  Color whiteColor4 = (Colors.white);
  Color blueColor4 = const Color(0xff2C50ED);
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
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: 770,
                  height: 30,
                  child: GestureDetector(
                    onTap: () {
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
                              height: 341,
                              color: ColorConstant.whiteColor,
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      color: ColorConstant.blueColor,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('                     '),
                                          Text(
                                            // textAlign: TextAlign.center,
                                            "Clear Amount",
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
                                                                  blueColor3 =
                                                                      Color(
                                                                          0xff2C50ED);
                                                                })
                                                              : setState(() {
                                                                  tap3 = !tap3;
                                                                  blueColor3 =
                                                                      Colors
                                                                          .white;
                                                                  whiteColor3 =
                                                                      Color(
                                                                          0xff2C50ED);
                                                                });
                                                        },
                                                        child: Container(
                                                          alignment:
                                                              Alignment.center,
                                                          width: 138,
                                                          height: 32,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  whiteColor3,
                                                              border: Border.all(
                                                                  color:
                                                                      blueColor3),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24)),
                                                          child: Text(
                                                            'Specific    ',
                                                            style: TextStyle(
                                                                color:
                                                                    blueColor3,
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
                                                        left: 90,
                                                        child: StatefulBuilder(
                                                          builder: (context,
                                                                  setState) =>
                                                              GestureDetector(
                                                            onTap: () {
                                                              tap4
                                                                  ? setState(
                                                                      () {
                                                                      tap4 =
                                                                          !tap4;
                                                                      whiteColor4 =
                                                                          Colors
                                                                              .white;
                                                                      blueColor4 =
                                                                          Color(
                                                                              0xff2C50ED);
                                                                    })
                                                                  : setState(
                                                                      () {
                                                                      tap4 =
                                                                          !tap4;
                                                                      blueColor4 =
                                                                          Colors
                                                                              .white;
                                                                      whiteColor4 =
                                                                          Color(
                                                                              0xff2C50ED);
                                                                    });
                                                              this.setState(
                                                                  () {});
                                                            },
                                                            child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              width: 138,
                                                              height: 32,
                                                              decoration: BoxDecoration(
                                                                  color:
                                                                      whiteColor4,
                                                                  border: Border
                                                                      .all(
                                                                          color:
                                                                              blueColor4),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              24)),
                                                              child: Text(
                                                                'All Clear',
                                                                style: TextStyle(
                                                                    color:
                                                                        blueColor4,
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
                                                        )),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          TextFieldWidget(labelText: 'ID:'),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          TextFieldWidget(
                                              labelText: 'Clear Amount'),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                    AlertButton(buttonName: 'Clear'),
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
                      height: 24,
                      width: 110,
                      decoration: BoxDecoration(
                          color: ColorConstant.blueColor,
                          borderRadius: BorderRadius.circular(18)),
                      child: Text(
                        'Clear Amount',
                        style: GoogleFonts.dmSans(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: ColorConstant.whiteColor),
                      ),
                    ),
                  ),
                ),
                // button end
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
          ),

          // naeem
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
                          Container(
                            width: MediaQuery.of(context).size.width * 0.70,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: List.generate(
                                text2.length,
                                (index) => Text(
                                  text2[index],
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                                growable: true,
                              ),
                            ),
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
                                                  color:
                                                      ColorConstant.blueColor)),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 26,
                                                width: 410,
                                                color: ColorConstant.blueColor,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
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
                                                padding:
                                                    const EdgeInsets.symmetric(
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
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        letterSpacing: 0.5),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )),
                                    );
                                  });
                            },
                            child: (Text(
                              'Check',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            )),
                          ),
                        ],
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
