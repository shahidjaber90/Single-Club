import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/alertButton.dart';
import 'package:singleclub/Widgets/dataHeadingWidget.dart';
import 'package:singleclub/Widgets/textfield_heading.dart';
import 'package:singleclub/Widgets/textfield_widget.dart';
import 'package:singleclub/Widgets/textfield_widget2.dart';
import 'package:web_pagination/web_pagination.dart';

class ReportView extends StatefulWidget {
  const ReportView({super.key});

  @override
  State<ReportView> createState() => _ReportViewState();
}

class _ReportViewState extends State<ReportView> {
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
                // User Active Deactive Details Buttons end
                Container(
                  color: ColorConstant.whiteColor,
                  alignment: Alignment.topLeft,
                  height: 650,
                  width: MediaQuery.of(context).size.width * 0.748,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // button Complain
                        Row(
                          children: [
                            Container(
                              height: 155,
                              width: MediaQuery.of(context).size.width * 0.748,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: GestureDetector(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              scrollable: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              elevation: 0,
                                              title: Container(
                                                // width: 425,
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.blueColor,
                                                    border: Border.all(
                                                        width: 2,
                                                        color: ColorConstant
                                                            .blueColor)),
                                                child: Column(
                                                  children: [
                                                     Container(
                          // height: 53,
                          // width: double.infinity,
                          color: ColorConstant.blueColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                        
                            
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "Create Complain",
                                style: GoogleFonts.poppins(
                                    color: ColorConstant.whiteColor,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(width: 60,),
                               
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
                                                    Container(
                                                      // width: 425,
                                                      color: ColorConstant
                                                          .whiteColor,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            // 1
                                                            TextFieldHeadnig(
                                                                headingText:
                                                                    'Category'),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left :20.0),
                                                              child: TextFieldWidget(
                                                                  labelText:
                                                                      'Select Types'),
                                                            ),
                                                            // 2
                                                            TextFieldHeadnig(
                                                                headingText:
                                                                    'Describe'),
                                                            TextFieldWidget2(
                                                                labelText:
                                                                    'Enter Full Details'),

                                                            //
                                                            const SizedBox(
                                                                height: 12),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                GestureDetector(
                                                                  onTap: () {
                                                                    showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return AlertDialog(
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            elevation:
                                                                                0,
                                                                            content: Container(
                                                                                height: 480,
                                                                                width: 410,
                                                                                decoration: BoxDecoration(color: ColorConstant.whiteColor, border: Border.all(width: 2, color: ColorConstant.blueColor)),
                                                                                child: Column(
                                                                                  children: [
                                                                                    Container(
                                                                                      height: 26,
                                                                                      width: 410,
                                                                                      color: ColorConstant.blueColor,
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.symmetric(horizontal: 31).copyWith(top: 40),
                                                                                      child: Container(
                                                                                        height: 288,
                                                                                        width: 400,
                                                                                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/complain.png'))),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                                      child: Container(
                                                                                        alignment: Alignment.center,
                                                                                        // height: 288,
                                                                                        width: 380,
                                                                                        child: Text(
                                                                                          'Music Time With My Chill ModMusic Time \nWith My Chill ModMusic Time With My Chill Mod',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w300, letterSpacing: 0.5),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                )),
                                                                          );
                                                                        });
                                                                  },
                                                                  child:
 
                        Container(
                          
                          height: 100,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          color: ColorConstant.whiteColor,
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      ColorConstant.blueColor.withOpacity(0.30),
                                  offset: const Offset(1, 2.0),
                                  blurRadius: 2.0,
                                  spreadRadius: 0.0),
                            ]),
                           
                          child: Padding(
                            padding: const EdgeInsets.only(top : 8.0),
                            child: Column(
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  "Upload File",
                                  style: GoogleFonts.poppins(
                                      color: ColorConstant.blueColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
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
                                  textAlign: TextAlign.center,
                                  "SVG/WEP",
                                  style: GoogleFonts.poppins(
                                      color: ColorConstant.blueColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      
                                                                ),
                                                              ],
                                                            ),
                                                            const SizedBox(
                                                                height: 12),
                                                            // Button
                                                            AlertButton(
                                                                buttonName:
                                                                    'Submit'),
                                                            const SizedBox(
                                                                height: 20),
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
                                      //// alert dialog end
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 105,
                                        height: 32,
                                        decoration: BoxDecoration(
                                            color: ColorConstant.blueColor,
                                            border: Border.all(
                                                color: ColorConstant.blueColor),
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        child: Text(
                                          'Make Complain',
                                          style: TextStyle(
                                              color: ColorConstant.whiteColor,
                                              letterSpacing: 0.5,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 40,
                                      width: 210,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            fillColor:
                                                ColorConstant.searchColor,
                                            filled: true,
                                            prefixIcon: Icon(Icons.search),
                                            hintText: 'Search...'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //
                        Container(
                          height: 600,
                          color: ColorConstant.searchColor,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 90.0,
                                      headingText: 'User Name'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 90.0,
                                      headingText: 'Id Number'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 100.0,
                                      headingText: 'Victim Name'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 90.0,
                                      headingText: 'Id Serial'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 90.0,
                                      headingText: 'CateGory'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 86.0,
                                      headingText: 'Document'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 100.0,
                                      headingText: 'Date/Time'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 80.0,
                                      headingText: 'Decision'),
                                  DataHeadingWidget(
                                      height: 24.0,
                                      width: 60.0,
                                      headingText: 'Action'),
                                ],
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              // first details user
                              Row(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.748,
                                    height: 55,
                                    color: ColorConstant.whiteColor,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 100.0,
                                            headingText: 'KingOfKings'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 120.0,
                                            headingText: '784575'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 130.0,
                                            headingText: 'Ashraf'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 150.0,
                                            headingText: '578456'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 100.0,
                                            headingText: 'Hate Speech'),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 20,
                                          width: 84,
                                          decoration: BoxDecoration(
                                            color: ColorConstant.blueColor,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Text(
                                            'Show',
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.whiteColor),
                                          ),
                                        ),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 160.0,
                                            headingText: '14 Feb 23 10:45 PM'),
                                        DataHeadingWidget(
                                            height: 24.0,
                                            width: 80.0,
                                            headingText: 'Name'),
                                        Column(
                                          children: [
                                            DataHeadingWidget(
                                                height: 24.0,
                                                width: 80.0,
                                                headingText: 'Active'),
                                            DataHeadingWidget(
                                                height: 24.0,
                                                width: 80.0,
                                                headingText: 'Ban'),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              //
                            ],
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
