import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/userDetailsData.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/cardWidget.dart';
import 'package:singleclub/Widgets/dataHeadingWidget.dart';
import 'package:singleclub/Widgets/userDetailsInput.dart';

class UserWidget extends StatefulWidget {
  const UserWidget({super.key});

  @override
  State<UserWidget> createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {
  bool tap1 = false;
  bool tap2 = false;
  Color whiteColor = (Colors.white);
  Color blueColor = const Color(0xff2C50ED);
  Color whiteColor2 = (Colors.white);
  Color blueColor2 = const Color(0xff2C50ED);

  List<Color> itemColors =
      List.generate(userDetails.length, (index) => Colors.white);
  List<Color> contentColors =
      List.generate(userDetails.length, (index) => Color(0xff2C50ED));
  int? lastSelectedIndex;
  bool isTap = false;
  bool isTap2 = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Center Page Content
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.96,
            width: MediaQuery.of(context).size.width * 0.748,
            color: ColorConstant.whiteColor,
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
                                'Generate Password',
                                style: TextStyle(
                                    color: blueColor,
                                    // letterSpacing: 0.5,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 120,
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
                  child: Expanded(
                    child: Row(
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
                                      height: 40,
                                      width: 80,
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
                          width: 225,
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
                Container(
                  color: ColorConstant.searchColor,
                  alignment: Alignment.topLeft,
                  height: 430,
                  width: MediaQuery.of(context).size.width * 0.748,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.delete,
                              color: ColorConstant.blueColor,
                            ),
                          ),
                          DataHeadingWidget(
                              height: 24.0, width: 18.0, headingText: 'SL'),
                          DataHeadingWidget(
                              height: 35.0, width: 52.0, headingText: 'Image'),
                          DataHeadingWidget(
                              height: 24.0, width: 91.0, headingText: 'name'),
                          DataHeadingWidget(
                              height: 24.0,
                              width: 100.0,
                              headingText: 'Id Serial'),
                          DataHeadingWidget(
                              height: 24.0, width: 90.0, headingText: 'Number'),
                          DataHeadingWidget(
                              height: 24.0,
                              width: 198.0,
                              headingText: 'E-Mail'),
                          DataHeadingWidget(
                              height: 24.0, width: 96.0, headingText: 'Status'),
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
                              width: 80,
                              decoration: BoxDecoration(
                                  color: ColorConstant.arrowColor
                                      .withOpacity(0.70),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                            Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: ColorConstant.arrowColor),
                                borderRadius: BorderRadius.circular(4),
                                color: ColorConstant.whiteColor,
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: (Text(
                                  'Details',
                                  style: TextStyle(
                                      color: ColorConstant.arrowColor),
                                )),
                              ),
                            )
                          ],
                        ),
                      ),
                      // second details user
                      Container(
                        height: 55,
                        color: ColorConstant.searchColor,
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
                              width: 80,
                              decoration: BoxDecoration(
                                  color: ColorConstant.arrowColor
                                      .withOpacity(0.70),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                            Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: ColorConstant.arrowColor),
                                borderRadius: BorderRadius.circular(4),
                                color: ColorConstant.whiteColor,
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: (Text(
                                  'Details',
                                  style: TextStyle(
                                      color: ColorConstant.arrowColor),
                                )),
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
      ],
    );
  }
}
