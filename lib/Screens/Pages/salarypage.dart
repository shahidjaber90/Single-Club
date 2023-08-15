import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Widgets/alertButton.dart';
import 'package:singleclub/Widgets/buttonDate.dart';
import 'package:singleclub/Widgets/dropdown_widget.dart';
import 'package:singleclub/Widgets/recordRow1.dart';

import '../../Utils/colors.dart';
import '../../Widgets/textfield_widget.dart';

class ClearPage extends StatefulWidget {
  const ClearPage({super.key});

  @override
  State<ClearPage> createState() => _ClearPageState();
}

class _ClearPageState extends State<ClearPage> {
  bool tap = false;
  bool tap3 = false;
  bool tap4 = false;
  Color whiteColor = (Colors.white);
  Color blueColor = const Color(0xff2C50ED);
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
                      width: 250,
                      height: 120,
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
                              height: 24,
                              width: 36,
                              child: Image.asset("assets/icons/ruby.png"),
                            ),
                            Text(
                              '78500000',
                              style: GoogleFonts.poppins(
                                  color: ColorConstant.blueColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Avalaible ',
                              style: GoogleFonts.poppins(
                                  color: ColorConstant.blueColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 180,
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        height: 120,
                        decoration: BoxDecoration(
                            color: ColorConstant.blueColor,
                            borderRadius: BorderRadius.circular(24)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 24,
                                width: 36,
                                child: Image.asset("assets/icons/ruby.png"),
                              ),
                              Text(
                                '18400000',
                                style: GoogleFonts.poppins(
                                    color: ColorConstant.whiteColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Recharge ',
                                style: GoogleFonts.poppins(
                                    color: ColorConstant.whiteColor,
                                    fontSize: 24,
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
                  width: MediaQuery.of(context).size.width * 0.58,
                  height: 30,
                  child: GestureDetector(
                    onTap: () {
                      tap
                          ? setState(() {
                              tap = !tap;
                              whiteColor = Colors.white;
                              blueColor = Color(0xff2C50ED);
                            })
                          : setState(() {
                              tap = !tap;
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
                              height: 341,
                              decoration: BoxDecoration(
                                  color: ColorConstant.whiteColor,
                                  border: Border.all(
                                      color: ColorConstant.blueColor,
                                      width: 2)),
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
                                          Text(''),
                                          Text(
                                            "Clear Amount",
                                            style: GoogleFonts.poppins(
                                                color: ColorConstant.whiteColor,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              tap
                                                  ? setState(() {
                                                      tap = !tap;
                                                      whiteColor = Colors.white;
                                                      blueColor =
                                                          Color(0xff2C50ED);
                                                    })
                                                  : setState(() {
                                                      tap = !tap;
                                                      blueColor = Colors.white;
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
                                          const SizedBox(height: 12),
                                          DropdownWidget4(
                                              items: paymentsList,
                                              selectItem: 'Amount Types'),
                                          const SizedBox(height: 10),
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
                      height: 28,
                      width: 120,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          border: Border.all(color: blueColor),
                          borderRadius: BorderRadius.circular(18)),
                      child: Text(
                        'Clear Amount',
                        style: GoogleFonts.dmSans(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: blueColor),
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
                        hintText: 'Search...'),
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
                                  useSafeArea: false,
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      scrollable: true,
                                      backgroundColor: Colors.transparent,
                                      elevation: 0,
                                      content: Container(
                                          height: 640,
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
                                                width: 410,
                                                height: 40,
                                                color: ColorConstant.blueColor,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(''),
                                                    Text(
                                                      'Record',
                                                      style: GoogleFonts.poppins(
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: ColorConstant
                                                              .whiteColor),
                                                    ),
                                                    IconButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        icon: Icon(
                                                          Icons.close,
                                                          color: ColorConstant
                                                              .whiteColor,
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              ButtonDate(
                                                  buttonText:
                                                      '14-February-2024'),
                                              RecordRow1(
                                                  textOne: 'Live Duration',
                                                  textTwo: 'Receive Coin'),
                                              RecordRow2(
                                                  textOne: '02:45 PM',
                                                  textTwo: '4575644  Coins'),
                                              const SizedBox(height: 16),
                                              RecordRow1(
                                                  textOne: 'Audio Duration',
                                                  textTwo: 'Receive Coin'),
                                              RecordRow2(
                                                  textOne: '02:45 PM',
                                                  textTwo: '4575644  Coins'),
                                              const SizedBox(height: 16),
                                              RecordRow3(
                                                  textOne:
                                                      'Total Receive:      1546845 Coins'),
                                              RecordRow3(
                                                  textOne:
                                                      'Total Withdrew:      1546845 Coins'),
                                              ButtonDate(
                                                  buttonText:
                                                      '18-December-2024'),
                                              RecordRow1(
                                                  textOne: 'Live Duration',
                                                  textTwo: 'Receive Coin'),
                                              RecordRow2(
                                                  textOne: '02:45 PM',
                                                  textTwo: '4575644  Coins'),
                                              const SizedBox(height: 16),
                                              RecordRow1(
                                                  textOne: 'Audio Duration',
                                                  textTwo: 'Receive Coin'),
                                              RecordRow2(
                                                  textOne: '02:45 PM',
                                                  textTwo: '4575644  Coins'),
                                              const SizedBox(height: 16),
                                              RecordRow3(
                                                  textOne:
                                                      'Total Receive:      1546845 Coins'),
                                              RecordRow3(
                                                  textOne:
                                                      'Total Withdrew:      1546845 Coins'),
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
