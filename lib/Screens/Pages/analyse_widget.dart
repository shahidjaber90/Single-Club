import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:singleclub/Local_variables/navigationData.dart';
import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Screens/Pages/users_layout_widget.dart';
import 'package:singleclub/Widgets/dropdown_widget.dart';
import 'package:singleclub/provider/togglepage.dart';

class AnalyseWidget extends StatefulWidget {
  const AnalyseWidget({super.key});

  @override
  State<AnalyseWidget> createState() => _AnalyseWidgetState();
}

class _AnalyseWidgetState extends State<AnalyseWidget> {
  List<Color> itemColors =
      List.generate(navigationData.length, (index) => Colors.white);
  List<Color> contentColors =
      List.generate(navigationData.length, (index) => Color(0xff2C50ED));
  int? lastSelectedIndex;
  @override
  Widget build(BuildContext context) {
    return Consumer<Myprovider>(
      builder: (context, value, child) => Row(
        children: [
          // Center Page Content
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.96,
              width: 620,
              color: ColorConstant.whiteColor,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          height: 50,
                          width: 200,
                          child: DropdownWidget7(
                              items: lastDays, selectItem: 'Select Days')),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: GridView.builder(
                      itemCount: 20,
                      padding: const EdgeInsetsDirectional.all(8),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 16.0,
                              mainAxisSpacing: 12.0),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            value.updateBoxIndex(index);
                            setState(() {
                              ind2 = index;
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
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: itemColors[index],
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                      color: ColorConstant.blueColor
                                          .withOpacity(0.30),
                                      offset: const Offset(1, 2.0),
                                      blurRadius: 2.0,
                                      spreadRadius: 0.0),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 65,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 6, top: 6),
                                              child: Text(
                                                '+14',
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 18),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SvgPicture.asset(
                                          'assets/svg/${navigationData[index]['icon']}',
                                          color: contentColors[index],
                                          height: 30,
                                          width: 30,
                                        ),
                                        const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: 6, bottom: 6),
                                              child: Text(
                                                '-14',
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 18),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    '${navigationData[index]['count']}',
                                    style: TextStyle(
                                        color: contentColors[index],
                                        fontSize: 30),
                                  ),
                                  Text(
                                    '${navigationData[index]['title']}',
                                    style: GoogleFonts.poppins(
                                        color: contentColors[index],
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          // Right Users Content
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: 380,
              child: UsersLayout(),
            ),
          ),
        ],
      ),
    );
  }
}
