import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/alertButton.dart';
import 'package:singleclub/Widgets/dropdown_widget.dart';
import 'package:singleclub/Widgets/textfield_heading.dart';
import 'package:singleclub/Widgets/textfield_widget.dart';
import 'package:singleclub/Widgets/textwidget.dart';
import 'package:web_pagination/web_pagination.dart';

class RewardView extends StatefulWidget {
  const RewardView({super.key});

  @override
  State<RewardView> createState() => _RewardViewState();
}

class _RewardViewState extends State<RewardView> {
  bool tap1 = false;
  Color whiteColor = (Colors.white);
  Color blueColor = const Color(0xff2C50ED);
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
            color: ColorConstant.searchColor,
            child: Column(
              children: [
                // button VIP
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: GestureDetector(
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
                                  builder: (context) {
                                    return AlertDialog(
                                      scrollable: true,
                                      backgroundColor: Colors.transparent,
                                      elevation: 0,
                                      title: Container(
                                        // width: 425,
                                        decoration: BoxDecoration(
                                            color: ColorConstant.blueColor,
                                            border: Border.all(
                                                color: ColorConstant.blueColor,
                                                width: 2)),
                                        child: Column(
                                          children: [
                                            Container(
                                              color: ColorConstant.blueColor,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .airline_seat_recline_extra_sharp,
                                                    color:
                                                        ColorConstant.blueColor,
                                                  ),
                                                  Text(
                                                    "Set up Reward",
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
                                                    icon:
                                                        const Icon(Icons.close),
                                                    color: ColorConstant
                                                        .whiteColor,
                                                  )
                                                ],
                                              ),
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
                                                    // 1
                                                    DropdownWidget(
                                                        items: userTypes,
                                                        selectItem:
                                                            'User Types',
                                                        title: 'User'),
                                                    // 2
                                                    // 3
                                                    TextFieldHeadnig(
                                                        headingText:
                                                            'Recieve Target'),
                                                    TextFieldWidget(
                                                        labelText: 'Coin:'),
                                                    // 4
                                                    DropdownWidget(
                                                        items: selectDays,
                                                        selectItem:
                                                            'Select Day',
                                                        title: 'Reward Day'),
                                                    // 5
                                                    DropdownWidget(
                                                        items: selectHour,
                                                        selectItem:
                                                            'Select Hours',
                                                        title: 'Live Time'),
                                                    // 6
                                                    TextFieldHeadnig(
                                                        headingText: 'Reward'),
                                                    TextFieldWidget(
                                                        labelText: 'Coin'),
                                                    // 7
                                                    DropdownWidget(
                                                        items: selectHour,
                                                        selectItem:
                                                            'Select Hours',
                                                        title: 'Hour'),

                                                    //
                                                    const SizedBox(height: 12),
                                                    // Button
                                                    AlertButton(
                                                        buttonName: 'Add'),
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
                                width: 130,
                                height: 32,
                                decoration: BoxDecoration(
                                    color: whiteColor,
                                    border: Border.all(color: blueColor),
                                    borderRadius: BorderRadius.circular(24)),
                                child: Text(
                                  'Add Reward',
                                  style: TextStyle(
                                      color: blueColor,
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
                // headings
                Container(
                  color: ColorConstant.whiteColor,
                  alignment: Alignment.topCenter,
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.748,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(text: 'SL'),
                            TextWidget(text: 'User'),
                            TextWidget(text: 'Receive'),
                            TextWidget(text: 'Day'),
                            TextWidget(text: 'Live Time'),
                            TextWidget(text: 'Reward'),
                            TextWidget(text: 'Hour'),
                            TextWidget(text: 'Action'),
                          ],
                        ),
                      )
                    ],
                  ), // main column End
                ),

                // details
                Container(
                  alignment: Alignment.topCenter,
                  height: 400,
                  width: MediaQuery.of(context).size.width * 0.748,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: ColorConstant.searchColor,
                          alignment: Alignment.topCenter,
                          height: 70,
                          width: MediaQuery.of(context).size.width * 0.73,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget(text: '01'),
                              TextWidget(text: 'All'),
                              TextWidget(text: '500.000'),
                              TextWidget(text: '7'),
                              TextWidget(text: '1 Hr'),
                              TextWidget(text: '9.600'),
                              TextWidget(text: '2'),
                              Container(
                                width: 90,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
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
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
                  ), // main column End
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
