import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Widgets/chip.dart';
import 'package:singleclub/Widgets/dropdown_widget.dart';

import '../../Utils/colors.dart';
import '../../Widgets/alertButton.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final List text = [
    "Game",
    "Collecting",
    "Total",
    "Reminder",
    "Distetution",
    "Result",
    "Commotion",
    "Big et",
    "Mix Win",
    "Restetution",
  ];
  final List text2 = [
    "Teen Patti",
    "25 sec",
    "30 sec",
    "20 sec",
    "  3 sec",
    " 2 secr",
    " 15-30 %",
    " 10-20 Time",
    " 5-15 M",
    " 20-72 Hours 3Time",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.whiteColor,
      appBar: AppBar(
        // toolbarHeight: 300,
        backgroundColor: ColorConstant.whiteColor,
        elevation: 0,
        title: GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                scrollable: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
                actions: [
                  Container(
                    width: 330,
                    height: 641,
                    color: ColorConstant.whiteColor,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 53,
                            width: double.infinity,
                            color: ColorConstant.blueColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "",
                                  style: GoogleFonts.poppins(
                                      color: ColorConstant.whiteColor,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Manage Game",
                                  style: GoogleFonts.poppins(
                                      color: ColorConstant.whiteColor,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600),
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
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // const SizedBox(
                                //   height: 1,
                                // ),
                                DropdownWidget(
                                    items: selectCategorys,
                                    selectItem: "Select game",
                                    title: " Game List"),
                                // TextFieldWidget2(labelText: 'Slect Gift:'),
                                const SizedBox(
                                  height: 5,
                                ),

                                Text(
                                  // textAlign: TextAlign.left,
                                  "Bet Setup",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),

                                const SizedBox(
                                  height: 10,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ChipWidget(text: "Coin Collect Time"),
                                    ChipWidget(text: "Remind Time"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ChipWidget(text: "Destitution Time"),
                                    ChipWidget(text: "Result Time"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ChipWidget(text: "Total Time"),
                                  ],
                                ),
                                //   ),
                                // ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  // textAlign: TextAlign.left,
                                  "Commotion",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),

                                const SizedBox(
                                  height: 10,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ChipWidget(text: "Minimun%"),
                                    ChipWidget(text: "Maximum%"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  // textAlign: TextAlign.left,
                                  "Big Bet",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),

                                const SizedBox(
                                  height: 10,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ChipWidget(text: "Minimun"),
                                    ChipWidget(text: "Maximum"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  // textAlign: TextAlign.left,
                                  "Win Limitation Minimum",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),

                                const SizedBox(
                                  height: 10,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ChipWidget(text: "Set amount"),
                                    ChipWidget(text: "Restriction Hrs"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ChipWidget(text: "Restriction Days"),
                                    ChipWidget(text: "Select icons"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ChipWidget(text: "icon expire"),
                                  ],
                                ),
                                //   ),
                                // ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  // textAlign: TextAlign.left,
                                  "Win Limitation Maximun",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),

                                const SizedBox(
                                  height: 10,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ChipWidget(text: "Set amount"),
                                    ChipWidget(text: "Restriction Hrs"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ChipWidget(text: "Restriction Days"),
                                    ChipWidget(text: "Select icons"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ChipWidget(text: "icon expire"),
                                  ],
                                ),
                                //   ),
                                // ),
                                const SizedBox(
                                  height: 10,
                                ),
                                AlertButton(buttonName: 'Add'),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
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
                color: ColorConstant.blueColor,
                border: Border.all(color: ColorConstant.blueColor),
                borderRadius: BorderRadius.circular(24)),
            child: Text(
              'Game Manage',
              style: TextStyle(
                  color: ColorConstant.whiteColor,
                  letterSpacing: 0.5,
                  fontSize: 11,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      text.length,
                      (index) => Text(
                            text2[index],
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Teen Patti',
                  style: GoogleFonts.inter(
                      color: Colors.black,
                      // letterSpacing: 0.5,
                      fontSize: 40,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'Lucky Game',
                  style: GoogleFonts.inter(
                      color: Colors.black,
                      // letterSpacing: 0.5,
                      fontSize: 40,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            //       LinearPercentIndicator(
            //         lineHeight: 10,
            //         percent: 0.52,
            //         fillColor: ColorConstant.blueColor,
            //         backgroundColor: ColorConstant.searchColor,
            //       ),
            //       const SizedBox(
            //   height: 10,
            // ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LinearPercentIndicator(
                  lineHeight: 10,
                  animation: true,
                  animationDuration: 100,
                  barRadius: const Radius.circular(12),
                  percent: 0.52,
                  trailing: Text(
                    "52%",
                    style: GoogleFonts.lato(
                        fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  leading: Text(
                    "A",
                    style: GoogleFonts.inter(
                        fontSize: 40, fontWeight: FontWeight.w400),
                  ),
                  progressColor: Colors.orange.shade300,
                  width: MediaQuery.of(context).size.width / 3.5,
                  backgroundColor: ColorConstant.searchColor,
                ),
                LinearPercentIndicator(
                  animation: true,
                  animationDuration: 100,
                  lineHeight: 10,
                  barRadius: const Radius.circular(12),
                  percent: 0.25,
                  trailing: Text(
                    "25%",
                    style: GoogleFonts.lato(
                        fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  leading: Text(
                    "B",
                    style: GoogleFonts.inter(
                        fontSize: 40, fontWeight: FontWeight.w400),
                  ),
                  progressColor: Colors.orange.shade300,
                  width: MediaQuery.of(context).size.width / 3.5,
                  backgroundColor: ColorConstant.searchColor,
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LinearPercentIndicator(
                  lineHeight: 10,
                  barRadius: const Radius.circular(12),
                  percent: 0.21,
                  animation: true,
                  animationDuration: 100,
                  trailing: Text(
                    "21%",
                    style: GoogleFonts.lato(
                        fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  leading: Text(
                    "C",
                    style: GoogleFonts.inter(
                        fontSize: 40, fontWeight: FontWeight.w400),
                  ),
                  progressColor: Colors.green.shade300,
                  width: MediaQuery.of(context).size.width / 3.5,
                  backgroundColor: ColorConstant.searchColor,
                ),
                LinearPercentIndicator(
                  animation: true,
                  animationDuration: 100,
                  lineHeight: 10,
                  barRadius: const Radius.circular(12),
                  percent: 0.21,
                  trailing: Text(
                    "21%",
                    style: GoogleFonts.lato(
                        fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  leading: Text(
                    "D",
                    style: GoogleFonts.inter(
                        fontSize: 40, fontWeight: FontWeight.w400),
                  ),
                  progressColor: Colors.green.shade300,
                  width: MediaQuery.of(context).size.width / 3.5,
                  backgroundColor: ColorConstant.searchColor,
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LinearPercentIndicator(
                  lineHeight: 10,
                  barRadius: const Radius.circular(12),
                  percent: 0.74,
                  trailing: Text(
                    "74%",
                    style: GoogleFonts.lato(
                        fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  leading: Text(
                    "E",
                    style: GoogleFonts.inter(
                        fontSize: 40, fontWeight: FontWeight.w400),
                  ),
                  animation: true,
                  animationDuration: 100,
                  progressColor: Colors.blue.shade300,
                  width: MediaQuery.of(context).size.width / 3.5,
                  backgroundColor: ColorConstant.searchColor,
                ),
                LinearPercentIndicator(
                  animation: true,
                  animationDuration: 100,
                  lineHeight: 10,
                  barRadius: const Radius.circular(12),
                  percent: 0.75,
                  trailing: Text(
                    "75%",
                    style: GoogleFonts.lato(
                        fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  leading: Text(
                    "F",
                    style: GoogleFonts.inter(
                        fontSize: 40, fontWeight: FontWeight.w400),
                  ),
                  progressColor: Colors.blue.shade300,
                  width: MediaQuery.of(context).size.width / 3.5,
                  backgroundColor: ColorConstant.searchColor,
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Jackpot Fruit',
                style: GoogleFonts.inter(
                    color: Colors.black,
                    // letterSpacing: 0.5,
                    fontSize: 40,
                    fontWeight: FontWeight.w400),
              ),
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LinearPercentIndicator(
                  animation: true,
                  animationDuration: 100,
                  lineHeight: 10,
                  barRadius: const Radius.circular(12),
                  percent: 0.74,
                  trailing: Text(
                    "74%",
                    style: GoogleFonts.lato(
                        fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  progressColor: Colors.orange.shade300,
                  width: MediaQuery.of(context).size.width / 3.5,
                  backgroundColor: ColorConstant.searchColor,
                ),
                LinearPercentIndicator(
                  animation: true,
                  animationDuration: 100,
                  lineHeight: 10,
                  barRadius: const Radius.circular(12),
                  percent: 0.75,
                  trailing: Text(
                    "75%",
                    style: GoogleFonts.lato(
                        fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  progressColor: Colors.orange.shade300,
                  width: MediaQuery.of(context).size.width / 3.5,
                  backgroundColor: ColorConstant.searchColor,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LinearPercentIndicator(
                  animation: true,
                  animationDuration: 100,
                  lineHeight: 10,
                  barRadius: const Radius.circular(12),
                  percent: 0.48,
                  trailing: Text(
                    "48%",
                    style: GoogleFonts.lato(
                        fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  progressColor: Colors.green.shade300,
                  width: MediaQuery.of(context).size.width / 3.5,
                  backgroundColor: ColorConstant.searchColor,
                ),
                LinearPercentIndicator(
                  animation: true,
                  animationDuration: 100,
                  lineHeight: 10,
                  barRadius: const Radius.circular(12),
                  percent: 0.88,
                  trailing: Text(
                    "88%",
                    style: GoogleFonts.lato(
                        fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  progressColor: Colors.green.shade300,
                  width: MediaQuery.of(context).size.width / 3.5,
                  backgroundColor: ColorConstant.searchColor,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LinearPercentIndicator(
                  animation: true,
                  animationDuration: 100,
                  lineHeight: 10,
                  barRadius: const Radius.circular(12),
                  percent: 0.67,
                  trailing: Text(
                    "67%",
                    style: GoogleFonts.lato(
                        fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  progressColor: Colors.blue.shade300,
                  width: MediaQuery.of(context).size.width / 3.5,
                  backgroundColor: ColorConstant.searchColor,
                ),
                LinearPercentIndicator(
                  animation: true,
                  animationDuration: 100,
                  lineHeight: 10,
                  barRadius: const Radius.circular(12),
                  percent: 0.727,
                  trailing: Text(
                    "27%",
                    style: GoogleFonts.lato(
                        fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  progressColor: Colors.blue.shade300,
                  width: MediaQuery.of(context).size.width / 3.5,
                  backgroundColor: ColorConstant.searchColor,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LinearPercentIndicator(
                  animation: true,
                  animationDuration: 100,
                  lineHeight: 10,
                  barRadius: const Radius.circular(12),
                  percent: 0.74,
                  trailing: Text(
                    "74%",
                    style: GoogleFonts.lato(
                        fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  progressColor: Colors.blue.shade300,
                  width: MediaQuery.of(context).size.width / 3.5,
                  backgroundColor: ColorConstant.searchColor,
                ),
                LinearPercentIndicator(
                  animation: true,
                  animationDuration: 100,
                  lineHeight: 10,
                  barRadius: const Radius.circular(12),
                  percent: 0.75,
                  trailing: Text(
                    "75%",
                    style: GoogleFonts.lato(
                        fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  progressColor: Colors.blue.shade300,
                  width: MediaQuery.of(context).size.width / 3.5,
                  backgroundColor: ColorConstant.searchColor,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
