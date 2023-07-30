import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/userDetailsData.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/cardWidget.dart';

class UserWidget extends StatefulWidget {
  const UserWidget({super.key});

  @override
  State<UserWidget> createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {
  List<Color> itemColors =
      List.generate(userDetails.length, (index) => Colors.white);
  List<Color> contentColors =
      List.generate(userDetails.length, (index) => Color(0xff2C50ED));
  int? lastSelectedIndex;
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
                              'Generate Password',
                              style: TextStyle(
                                  color: ColorConstant.blueColor,
                                  letterSpacing: 0.5,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Positioned(
                            left: 120,
                            child: Container(
                              alignment: Alignment.center,
                              width: 138,
                              height: 32,
                              decoration: BoxDecoration(
                                  color: ColorConstant.blueColor,
                                  borderRadius: BorderRadius.circular(24)),
                              child: Text(
                                'Room Password',
                                style: TextStyle(
                                    color: ColorConstant.whiteColor,
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
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: userDetails.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                itemColors[index] = ColorConstant.blueColor;
                                contentColors[index] = ColorConstant.whiteColor;

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
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: itemColors[index],
                              ),
                              child: Text(
                                '${userDetails[index]}',
                                style: GoogleFonts.poppins(
                                    color: contentColors[index],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.5),
                              ),
                            )),
                      );
                    },
                  ),
                ),
                Container(
                  height: 350,
                  width: 800,
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
        ),
      ],
    );
    ;
  }
}
