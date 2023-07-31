import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/userDetailsData.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/alertButton.dart';
import 'package:singleclub/Widgets/cardWidget.dart';
import 'package:singleclub/Widgets/dataHeadingWidget.dart';
import 'package:singleclub/Widgets/textfield_widget.dart';
import 'package:singleclub/Widgets/userDetailsInput.dart';
import 'package:web_pagination/web_pagination.dart';

class BanView extends StatefulWidget {
  const BanView({super.key});

  @override
  State<BanView> createState() => _BanViewState();
}

class _BanViewState extends State<BanView> {
  List<Color> itemColors =
      List.generate(userDetails.length, (index) => Colors.white);
  List<Color> contentColors =
      List.generate(userDetails.length, (index) => Color(0xff2C50ED));
  int? lastSelectedIndex;
  bool isTap = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Center Page Content
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.98,
            width: MediaQuery.of(context).size.width * 0.748,
            color: ColorConstant.whiteColor,
            child: Column(
              children: [
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
                // button Paswwords
                const SizedBox(height: 8),
                Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 280,
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 138,
                            height: 32,
                            decoration: BoxDecoration(
                                color: ColorConstant.whiteColor,
                                border:
                                    Border.all(color: ColorConstant.blueColor),
                                borderRadius: BorderRadius.circular(24)),
                            child: Text(
                              'Ban',
                              style: TextStyle(
                                  color: ColorConstant.blueColor,
                                  letterSpacing: 0.5,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Positioned(
                            left: 120,
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      scrollable: true,
                                      backgroundColor: Colors.transparent,
                                      elevation: 0,
                                      title: Container(
                                        width: 425,
                                        color: ColorConstant.blueColor,
                                        child: Column(
                                          children: [
                                            Text(
                                              'Set Up Reward',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 0.5,
                                                  color:
                                                      ColorConstant.whiteColor),
                                            ),
                                            Container(
                                              width: 425,
                                              color: ColorConstant.whiteColor,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    // Buttons Admin And User in Alert
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(
                                                          height: 40,
                                                          width: 280,
                                                          child: Stack(
                                                            children: [
                                                              Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                width: 138,
                                                                height: 32,
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .whiteColor,
                                                                    border: Border.all(
                                                                        color: ColorConstant
                                                                            .blueColor),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            24)),
                                                                child: Text(
                                                                  'User',
                                                                  style: TextStyle(
                                                                      color: ColorConstant
                                                                          .blueColor,
                                                                      letterSpacing:
                                                                          0.5,
                                                                      fontSize:
                                                                          11,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                left: 120,
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () {},
                                                                  child:
                                                                      Container(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    width: 138,
                                                                    height: 32,
                                                                    decoration: BoxDecoration(
                                                                        color: ColorConstant
                                                                            .blueColor,
                                                                        borderRadius:
                                                                            BorderRadius.circular(24)),
                                                                    child: Text(
                                                                      'Admin',
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .whiteColor,
                                                                          letterSpacing:
                                                                              0.5,
                                                                          fontSize:
                                                                              11,
                                                                          fontWeight:
                                                                              FontWeight.w700),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(height: 20),
                                                    // 1
                                                    TextFieldWidget(
                                                        labelText:
                                                            'Select Admin'),
                                                    const SizedBox(height: 18),
                                                    TextFieldWidget(
                                                        labelText: 'ID:'),

                                                    //
                                                    const SizedBox(height: 60),
                                                    // Button
                                                    AlertButton(
                                                        buttonName: 'Active'),
                                                    const SizedBox(height: 20),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 138,
                                height: 32,
                                decoration: BoxDecoration(
                                    color: ColorConstant.blueColor,
                                    borderRadius: BorderRadius.circular(24)),
                                child: Text(
                                  'Active',
                                  style: TextStyle(
                                      color: ColorConstant.whiteColor,
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
                // User Active Deactive Details Buttons
                Container(
                  height: 60,
                  child: Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: banDetails.length,
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

                                      print(banDetails[index]);
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 40,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: itemColors[index],
                                      ),
                                      child: Text(
                                        '${banDetails[index]}',
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
                                hintText: 'Searching User'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // User Active Deactive Details Buttons end
                Container(
                  color: ColorConstant.searchColor,
                  alignment: Alignment.topLeft,
                  height: 440,
                  width: MediaQuery.of(context).size.width * 0.748,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            DataHeadingWidget(
                                height: 24.0, width: 20.0, headingText: 'SL'),
                            DataHeadingWidget(
                                height: 24.0,
                                width: 50.0,
                                headingText: 'Image'),
                            DataHeadingWidget(
                                height: 24.0,
                                width: 110.0,
                                headingText: 'name'),
                            DataHeadingWidget(
                                height: 24.0,
                                width: 90.0,
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
                                width: 86.0,
                                headingText: 'Category'),
                            DataHeadingWidget(
                                height: 24.0,
                                width: 70.0,
                                headingText: 'Reason'),
                            DataHeadingWidget(
                                height: 24.0,
                                width: 100.0,
                                headingText: 'Date/Time'),
                            DataHeadingWidget(
                                height: 24.0,
                                width: 60.0,
                                headingText: 'Record'),
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
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 60.0,
                                  headingText: 'Ban'),
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 112.0,
                                  headingText: 'Bad Language'),
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 150.0,
                                  headingText: '14 Feb 23 10:45 PM'),
                            ],
                          ),
                        ),
                        // second details user
                        Container(
                          height: 62,
                          color: ColorConstant.whiteColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 20.0,
                                      headingText: '02'),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  DataDetailsWidget(
                                      height: 45.0,
                                      width: 100.0,
                                      detailsText: 'assets/images/user2.png'),
                                ],
                              ),
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 170.0,
                                  headingText: '@Ashley H. Throops'),
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 150.0,
                                  headingText: '01722924089'),
                              // status
                              Container(
                                height: 24,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.red.shade100,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.circle_sharp,
                                        color: Colors.red,
                                      ),
                                      Text(
                                        'Ban',
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ],
                                  ),
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
                              //
                              Icon(
                                Icons.info,
                                color: ColorConstant.blueColor,
                              )
                            ],
                          ),
                        ),
                        // third details user
                        Container(
                          height: 62,
                          color: ColorConstant.whiteColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 20.0,
                                      headingText: '03'),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  DataDetailsWidget(
                                      height: 45.0,
                                      width: 100.0,
                                      detailsText: 'assets/images/user3.png'),
                                ],
                              ),
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 170.0,
                                  headingText: '@Ashley H. Throops'),
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 150.0,
                                  headingText: '01722924089'),
                              // status
                              Container(
                                height: 24,
                                width: 110,
                                decoration: BoxDecoration(
                                    color: Colors.green.shade100,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.circle_sharp,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        'Active',
                                        style: TextStyle(color: Colors.green),
                                      )
                                    ],
                                  ),
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
                              //
                              Icon(
                                Icons.info,
                                color: ColorConstant.blueColor,
                              )
                            ],
                          ),
                        ),
                        // four details user
                        Container(
                          height: 62,
                          color: ColorConstant.whiteColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 20.0,
                                      headingText: '04'),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  DataDetailsWidget(
                                      height: 45.0,
                                      width: 100.0,
                                      detailsText: 'assets/images/user4.png'),
                                ],
                              ),
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 170.0,
                                  headingText: '@Ashley H. Throops'),
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 150.0,
                                  headingText: '01722924089'),
                              // status
                              Container(
                                height: 24,
                                width: 110,
                                decoration: BoxDecoration(
                                    color: Colors.green.shade100,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.circle_sharp,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        'Active',
                                        style: TextStyle(color: Colors.green),
                                      )
                                    ],
                                  ),
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
                              //
                              Icon(
                                Icons.info,
                                color: ColorConstant.blueColor,
                              )
                            ],
                          ),
                        ),
                        // five details user
                        Container(
                          height: 62,
                          color: ColorConstant.whiteColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 20.0,
                                      headingText: '05'),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  DataDetailsWidget(
                                      height: 45.0,
                                      width: 100.0,
                                      detailsText: 'assets/images/user5.png'),
                                ],
                              ),
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 170.0,
                                  headingText: '@Ashley H. Throops'),
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 150.0,
                                  headingText: '01722924089'),
                              // status
                              Container(
                                height: 24,
                                width: 110,
                                decoration: BoxDecoration(
                                    color: Colors.green.shade100,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.circle_sharp,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        'Active',
                                        style: TextStyle(color: Colors.green),
                                      )
                                    ],
                                  ),
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
                              //
                              Icon(
                                Icons.info,
                                color: ColorConstant.blueColor,
                              )
                            ],
                          ),
                        ),
                        // six details user
                        Container(
                          height: 62,
                          color: ColorConstant.whiteColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 20.0,
                                      headingText: '06'),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  DataDetailsWidget(
                                      height: 45.0,
                                      width: 100.0,
                                      detailsText: 'assets/images/user5.png'),
                                ],
                              ),
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 170.0,
                                  headingText: '@Ashley H. Throops'),
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 150.0,
                                  headingText: '01722924089'),
                              // status
                              Container(
                                height: 24,
                                width: 110,
                                decoration: BoxDecoration(
                                    color: Colors.green.shade100,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.circle_sharp,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        'Active',
                                        style: TextStyle(color: Colors.green),
                                      )
                                    ],
                                  ),
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
                              //
                              Icon(
                                Icons.info,
                                color: ColorConstant.blueColor,
                              )
                            ],
                          ),
                        ),
                        // seven details user
                        Container(
                          height: 62,
                          color: ColorConstant.whiteColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 20.0,
                                      headingText: '07'),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  DataDetailsWidget(
                                      height: 45.0,
                                      width: 100.0,
                                      detailsText: 'assets/images/user7.png'),
                                ],
                              ),
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 170.0,
                                  headingText: '@Ashley H. Throops'),
                              DataHeadingWidget(
                                  height: 24.0,
                                  width: 150.0,
                                  headingText: '01722924089'),
                              // status
                              Container(
                                height: 24,
                                width: 110,
                                decoration: BoxDecoration(
                                    color: Colors.green.shade100,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.circle_sharp,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        'Active',
                                        style: TextStyle(color: Colors.green),
                                      )
                                    ],
                                  ),
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
                              //
                              Icon(
                                Icons.info,
                                color: ColorConstant.blueColor,
                              )
                            ],
                          ),
                        ),

                        //
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
