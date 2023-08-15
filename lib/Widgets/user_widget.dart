import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/information.dart';
import 'package:singleclub/Local_variables/userDetailsData.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/admin_field_heading.dart';
import 'package:singleclub/Widgets/cardWidget.dart';
import 'package:singleclub/Widgets/dataHeadingWidget.dart';
import 'package:singleclub/Widgets/textfield_heading.dart';
import 'package:singleclub/Widgets/textfield_widget.dart';
import 'package:singleclub/Widgets/userDetailsInput.dart';

class UserWidget extends StatefulWidget {
  const UserWidget({super.key});

  @override
  State<UserWidget> createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {
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
  bool isObsecure = true;

  List<Color> itemColors =
      List.generate(userDetails.length, (index) => Colors.white);
  List<Color> contentColors =
      List.generate(userDetails.length, (index) => Color(0xff2C50ED));
  int? lastSelectedIndex;
  bool isTap = false;
  bool isTap2 = false;
  bool isSwitched = false;
  var textValue = '';
  bool isSwitched2 = false;

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Active';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Ban';
      });
      print('Switch Button is OFF');
    }
  }

  void toggleSwitch2(bool value) {
    if (isSwitched2 == false) {
      setState(() {
        isSwitched2 = true;
        textValue = 'Active';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched2 = false;
        textValue = 'Ban';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Center Page Content
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.96,
            width: MediaQuery.of(context).size.width * 0.76,
            color: ColorConstant.whiteColor,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  // button Paswwords
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
                                        decoration: BoxDecoration(
                                            color: ColorConstant.whiteColor,
                                            border: Border.all(
                                                width: 2,
                                                color:
                                                    ColorConstant.blueColor)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          tap1
                                                              ? setState(() {
                                                                  tap1 = !tap1;
                                                                  whiteColor =
                                                                      Colors
                                                                          .white;
                                                                  blueColor = Color(
                                                                      0xff2C50ED);
                                                                })
                                                              : setState(() {
                                                                  tap1 = !tap1;
                                                                  blueColor =
                                                                      Colors
                                                                          .white;
                                                                  whiteColor =
                                                                      Color(
                                                                          0xff2C50ED);
                                                                });
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        icon: Icon(
                                                          Icons.close,
                                                          color: ColorConstant
                                                              .blueColor,
                                                        ))
                                                  ],
                                                ),
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
                                                          builder: (context,
                                                                  setState) =>
                                                              GestureDetector(
                                                            onTap: () {
                                                              tap3
                                                                  ? setState(
                                                                      () {
                                                                      tap3 =
                                                                          !tap3;
                                                                      whiteColor3 =
                                                                          Colors
                                                                              .white;
                                                                      blueColor3 =
                                                                          Color(
                                                                              0xff2C50ED);
                                                                    })
                                                                  : setState(
                                                                      () {
                                                                      tap3 =
                                                                          !tap3;
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
                                                                  Alignment
                                                                      .center,
                                                              width: 138,
                                                              height: 32,
                                                              decoration: BoxDecoration(
                                                                  color:
                                                                      whiteColor3,
                                                                  border: Border
                                                                      .all(
                                                                          color:
                                                                              blueColor3),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              24)),
                                                              child: Text(
                                                                'information   ',
                                                                style: TextStyle(
                                                                    color:
                                                                        blueColor3,
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
                                                        Positioned(
                                                            left: 100,
                                                            child:
                                                                StatefulBuilder(
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
                                                                              Colors.white;
                                                                          blueColor4 =
                                                                              Color(0xff2C50ED);
                                                                        })
                                                                      : setState(
                                                                          () {
                                                                          tap4 =
                                                                              !tap4;
                                                                          blueColor4 =
                                                                              Colors.white;
                                                                          whiteColor4 =
                                                                              Color(0xff2C50ED);
                                                                        });
                                                                  this.setState(
                                                                      () {});
                                                                },
                                                                child:
                                                                    Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  width: 138,
                                                                  height: 32,
                                                                  decoration: BoxDecoration(
                                                                      color:
                                                                          whiteColor4,
                                                                      border: Border.all(
                                                                          color:
                                                                              blueColor4),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              24)),
                                                                  child: Text(
                                                                    'Security',
                                                                    style: TextStyle(
                                                                        color:
                                                                            blueColor4,
                                                                        letterSpacing:
                                                                            0.5,
                                                                        fontSize:
                                                                            11,
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
                                              const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20),
                                                child: AdminFieldHeading(
                                                    headingText: 'Login info'),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              TextFieldWidget21(
                                                labelText: '',
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20),
                                                child: AdminFieldHeading(
                                                    headingText: 'Password'),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              TextFieldWidget21(
                                                labelText: '',
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(15.0),
                                                child: Container(
                                                  height: 50,
                                                  color:
                                                      ColorConstant.blueColor,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  child: Center(
                                                    child: Text(
                                                      "Generate Pasword",
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .whiteColor,
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              TextFieldWidget21(
                                                labelText: '',
                                              ),
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
                                  'Generate Password      ',
                                  style: TextStyle(
                                      color: blueColor,
                                      // letterSpacing: 0.5,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 110,
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
                                          decoration: BoxDecoration(
                                              color: ColorConstant.whiteColor,
                                              border: Border.all(
                                                  width: 2,
                                                  color:
                                                      ColorConstant.blueColor)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(0.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      IconButton(
                                                          onPressed: () {
                                                            tap2
                                                                ? setState(() {
                                                                    tap2 =
                                                                        !tap2;
                                                                    whiteColor2 =
                                                                        Colors
                                                                            .white;
                                                                    blueColor2 =
                                                                        Color(
                                                                            0xff2C50ED);
                                                                  })
                                                                : setState(() {
                                                                    tap2 =
                                                                        !tap2;
                                                                    blueColor2 =
                                                                        Colors
                                                                            .white;
                                                                    whiteColor2 =
                                                                        Color(
                                                                            0xff2C50ED);
                                                                  });
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          icon: Icon(
                                                            Icons.close,
                                                            color: ColorConstant
                                                                .blueColor,
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                        height: 40,
                                                        width: 140,
                                                        child: StatefulBuilder(
                                                          builder: (context,
                                                                  setState) =>
                                                              GestureDetector(
                                                            onTap: () {
                                                              tap3
                                                                  ? setState(
                                                                      () {
                                                                      tap3 =
                                                                          !tap3;
                                                                      whiteColor3 =
                                                                          Colors
                                                                              .white;
                                                                      blueColor3 =
                                                                          Color(
                                                                              0xff2C50ED);
                                                                    })
                                                                  : setState(
                                                                      () {
                                                                      tap3 =
                                                                          !tap3;
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
                                                                  Alignment
                                                                      .center,
                                                              width: 138,
                                                              height: 32,
                                                              decoration: BoxDecoration(
                                                                  color:
                                                                      whiteColor3,
                                                                  border: Border
                                                                      .all(
                                                                          color:
                                                                              blueColor3),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              24)),
                                                              child: Text(
                                                                'Room Password',
                                                                style: TextStyle(
                                                                    color:
                                                                        blueColor3,
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
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20),
                                                  child: AdminFieldHeading(
                                                      headingText: 'ID'),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                TextFieldWidget21(
                                                    labelText: ''),
                                                // const SizedBox(
                                                //   height: 15,
                                                // ),
                                                const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20),
                                                  child: AdminFieldHeading(
                                                      headingText: 'Password'),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15.0),
                                                  child: Container(
                                                    height: 50,
                                                    color:
                                                        ColorConstant.blueColor,
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    child: Center(
                                                      child: Text(
                                                        "Check Pasword",
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .whiteColor,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                                TextFieldWidget21(
                                                    labelText: ''),
                                                const SizedBox(
                                                  height: 15,
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
                                      color: whiteColor2,
                                      border: Border.all(color: blueColor2),
                                      borderRadius: BorderRadius.circular(24)),
                                  child: Text(
                                    'Room Password',
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
                  const SizedBox(height: 8),
                  // History Of users
                  Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width * 0.748,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardWidget(
                            width: 170.0,
                            height: 138.0,
                            qty: '65931',
                            text: 'Active User'),
                        CardWidget(
                            width: 170.0,
                            height: 138.0,
                            qty: '65',
                            text: 'Deactive Last Month'),
                        CardWidget(
                            width: 170.0,
                            height: 138.0,
                            qty: '65',
                            text: 'New User'),
                        CardWidget(
                            width: 170.0,
                            height: 138.0,
                            qty: '1524485',
                            text: 'Ban'),
                        CardWidget(
                            width: 170.0,
                            height: 138.0,
                            qty: '1524485',
                            text: 'Device Ban'),
                      ],
                    ),
                  ),
                  // User Active Deactive Details Buttons
                  Container(
                    height: 58,
                    width: MediaQuery.of(context).size.width * 0.76,
                    // color: Colors.yellow,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: userDetails.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        itemColors[index] =
                                            ColorConstant.blueColor;
                                        contentColors[index] =
                                            ColorConstant.whiteColor;

                                        if (lastSelectedIndex != null &&
                                            lastSelectedIndex != index) {
                                          itemColors[lastSelectedIndex!] =
                                              ColorConstant.whiteColor;
                                          contentColors[lastSelectedIndex!] =
                                              ColorConstant.blueColor;
                                        }
                                        lastSelectedIndex = index;
                                      });

                                      print(userDetails[index]);
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 32,
                                      width: 77,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: itemColors[index],
                                      ),
                                      child: Text(
                                        '${userDetails[index]}',
                                        style: GoogleFonts.poppins(
                                            color: contentColors[index],
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.5),
                                      ),
                                    )),
                              );
                            },
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 210,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorConstant.searchColor),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                fillColor: ColorConstant.searchColor,
                                filled: true,
                                prefixIcon: Icon(Icons.search),
                                hintText: 'Searching...'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: ColorConstant.searchColor,
                    alignment: Alignment.topLeft,
                    height: 430,
                    width: MediaQuery.of(context).size.width * 0.76,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(
                                Icons.delete,
                                color: ColorConstant.blueColor,
                              ),
                            ),
                            DataHeadingWidget(
                                height: 24.0, width: 18.0, headingText: 'SL'),
                            DataHeadingWidget(
                                height: 35.0,
                                width: 52.0,
                                headingText: 'Image'),
                            DataHeadingWidget(
                                height: 24.0, width: 91.0, headingText: 'name'),
                            DataHeadingWidget(
                                height: 24.0,
                                width: 100.0,
                                headingText: 'Id Serial'),
                            DataHeadingWidget(
                                height: 24.0,
                                width: 90.0,
                                headingText: 'Number'),
                            DataHeadingWidget(
                                height: 24.0,
                                width: 198.0,
                                headingText: 'E-Mail'),
                            DataHeadingWidget(
                                height: 24.0,
                                width: 96.0,
                                headingText: 'Status'),
                            DataHeadingWidget(
                                height: 24.0,
                                width: 120.0,
                                headingText: 'Country'),
                            DataHeadingWidget(
                                height: 24.0, width: 44.0, headingText: 'Info'),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        // first details user
                        Container(
                          height: 55,
                          color: ColorConstant.whiteColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Checkbox(
                                  value: isTap2,
                                  onChanged: (value) {
                                    setState(() {
                                      isTap2 = value!;
                                    });
                                  },
                                ),
                              ),
                              DataHeadingWidget(
                                  height: 24.0, width: 20.0, headingText: '01'),
                              DataDetailsWidget(
                                  height: 35.0,
                                  width: 35.0,
                                  detailsText: 'assets/images/user1.png'),
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 113.0,
                                  headingText: 'King Of Kings'),
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 100.0,
                                  headingText: '548645'),
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 100.0,
                                  headingText: '01722924089'),
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 216.0,
                                  headingText: 'kingofkingslove@gmail.com'),
                              // status

                              Container(
                                height: 24,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: ColorConstant.arrowColor
                                        .withOpacity(0.70),
                                    border: Border.all(
                                        color: isSwitched
                                            ? Colors.red
                                            : ColorConstant.blueColor),
                                    borderRadius: BorderRadius.circular(24)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  child: Transform.scale(
                                      scale: 1,
                                      child: Switch(
                                        onChanged: toggleSwitch,
                                        value: isSwitched,
                                        activeColor: Colors.red.shade800,
                                        activeTrackColor: Colors.white,
                                        inactiveThumbColor:
                                            ColorConstant.blueColor,
                                        inactiveTrackColor: Colors.white,
                                      )),
                                ),
                              ),
                              Container(
                                width: 120,
                                height: 24,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/icons/flag.png'),
                                        const SizedBox(width: 6),
                                        Text(
                                          'Bangladesh',
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ],
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
                                                  color:
                                                      ColorConstant.whiteColor,
                                                  border: Border.all(
                                                      width: 2,
                                                      color: ColorConstant
                                                          .blueColor)),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 26,
                                                    width: 410,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        IconButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            icon: Icon(
                                                              Icons.close,
                                                              color:
                                                                  ColorConstant
                                                                      .blueColor,
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 30,
                                                        width: 135,
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .blueColor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24)),
                                                        child: Text(
                                                          'Details',
                                                          style: GoogleFonts.dmSans(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: ColorConstant
                                                                  .whiteColor),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 50,
                                                    ).copyWith(top: 30),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: 140,
                                                          height: 18,
                                                          child: Text(
                                                            'Register Date/ Time',
                                                            style: GoogleFonts.dmSans(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: ColorConstant
                                                                    .blueColor),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        Container(
                                                          width: 140,
                                                          height: 18,
                                                          child: Text(
                                                            '14 Feb 2023 11:45 PM',
                                                            style: GoogleFonts.dmSans(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: ColorConstant
                                                                    .blueColor),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: ListView.builder(
                                                      itemCount:
                                                          information.length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical: 5),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                width: 140,
                                                                height: 18,
                                                                child: Text(
                                                                  information[
                                                                          index]
                                                                      ['title'],
                                                                  style: GoogleFonts.dmSans(
                                                                      fontSize:
                                                                          13,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      color: Colors
                                                                          .black
                                                                          .withOpacity(
                                                                              0.60)),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                width: 10,
                                                              ),
                                                              Container(
                                                                width: 140,
                                                                height: 18,
                                                                child: Text(
                                                                  information[
                                                                          index]
                                                                      [
                                                                      'details'],
                                                                  style: GoogleFonts.dmSans(
                                                                      fontSize:
                                                                          13,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      color: ColorConstant
                                                                          .blueColor),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  )
                                                ],
                                              )),
                                        );
                                      });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: ColorConstant.arrowColor),
                                    borderRadius: BorderRadius.circular(4),
                                    color: ColorConstant.whiteColor,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    child: (Text(
                                      'Details',
                                      style: TextStyle(
                                          color: ColorConstant.arrowColor),
                                    )),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        // second details user
                        Container(
                          height: 55,
                          // color: ColorConstant.searchColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Checkbox(
                                  value: isTap,
                                  onChanged: (value) {
                                    setState(() {
                                      isTap = value!;
                                    });
                                  },
                                ),
                              ),
                              DataHeadingWidget(
                                  height: 24.0, width: 20.0, headingText: '02'),
                              DataDetailsWidget(
                                  height: 42.0,
                                  width: 35.0,
                                  detailsText: 'assets/images/user2.png'),
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 335.0,
                                  headingText: '@Ashley H. Throop'),
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 208.0,
                                  headingText: '01722924089'),
                              // status
                              Container(
                                height: 24,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: ColorConstant.arrowColor
                                        .withOpacity(0.70),
                                    border: Border.all(
                                        color: isSwitched2
                                            ? Colors.red
                                            : ColorConstant.blueColor),
                                    borderRadius: BorderRadius.circular(24)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  child: Transform.scale(
                                      scale: 1,
                                      child: Switch(
                                        onChanged: toggleSwitch2,
                                        value: isSwitched2,
                                        activeColor: Colors.red.shade800,
                                        activeTrackColor: Colors.white,
                                        inactiveThumbColor:
                                            ColorConstant.blueColor,
                                        inactiveTrackColor: Colors.white,
                                      )),
                                ),
                              ),
                              Container(
                                width: 120,
                                height: 24,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/icons/flag.png'),
                                        const SizedBox(width: 6),
                                        Text(
                                          'Bangladesh',
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ],
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
                                                  color:
                                                      ColorConstant.whiteColor,
                                                  border: Border.all(
                                                      width: 2,
                                                      color: ColorConstant
                                                          .blueColor)),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 26,
                                                    width: 410,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        IconButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            icon: Icon(
                                                              Icons.close,
                                                              color:
                                                                  ColorConstant
                                                                      .blueColor,
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 30,
                                                        width: 135,
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .blueColor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24)),
                                                        child: Text(
                                                          'Details',
                                                          style: GoogleFonts.dmSans(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: ColorConstant
                                                                  .whiteColor),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 50,
                                                    ).copyWith(top: 30),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: 140,
                                                          height: 18,
                                                          child: Text(
                                                            'Register Date/ Time',
                                                            style: GoogleFonts.dmSans(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: ColorConstant
                                                                    .blueColor),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        Container(
                                                          width: 140,
                                                          height: 18,
                                                          child: Text(
                                                            '14 Feb 2023 11:45 PM',
                                                            style: GoogleFonts.dmSans(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: ColorConstant
                                                                    .blueColor),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: ListView.builder(
                                                      itemCount:
                                                          information.length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical: 5),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                width: 140,
                                                                height: 18,
                                                                child: Text(
                                                                  information[
                                                                          index]
                                                                      ['title'],
                                                                  style: GoogleFonts.dmSans(
                                                                      fontSize:
                                                                          13,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      color: Colors
                                                                          .black
                                                                          .withOpacity(
                                                                              0.60)),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                width: 10,
                                                              ),
                                                              Container(
                                                                width: 140,
                                                                height: 18,
                                                                child: Text(
                                                                  information[
                                                                          index]
                                                                      [
                                                                      'details'],
                                                                  style: GoogleFonts.dmSans(
                                                                      fontSize:
                                                                          13,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      color: ColorConstant
                                                                          .blueColor),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  )
                                                ],
                                              )),
                                        );
                                      });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: ColorConstant.arrowColor),
                                    borderRadius: BorderRadius.circular(4),
                                    color: ColorConstant.whiteColor,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    child: (Text(
                                      'Details',
                                      style: TextStyle(
                                          color: ColorConstant.arrowColor),
                                    )),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
