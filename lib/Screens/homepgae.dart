import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icon.dart';
import 'package:provider/provider.dart';
import 'package:singleclub/Local_variables/navigationData.dart';
import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Screens/Pages/ads_view.dart';
import 'package:singleclub/Screens/Pages/agency_view.dart';
import 'package:singleclub/Screens/Pages/media_view.dart';
import 'package:singleclub/Screens/Pages/verification_view.dart';
import 'package:singleclub/Screens/admin_page.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Screens/Pages/Giftpage.dart';
import 'package:singleclub/Screens/Pages/Rechargepage.dart';
import 'package:singleclub/Screens/Pages/Stickerview.dart';
import 'package:singleclub/Screens/Pages/Storepage.dart';
import 'package:singleclub/Screens/Pages/analyse_widget.dart';
import 'package:singleclub/Screens/Pages/banView.dart';
import 'package:singleclub/Screens/Pages/bannerpage.dart';
import 'package:singleclub/Screens/Pages/gamepage.dart';
import 'package:singleclub/Screens/Pages/guardian_view.dart';
import 'package:singleclub/Screens/Pages/levelpage.dart';
import 'package:singleclub/Screens/Pages/payment.dart';
import 'package:singleclub/Screens/Pages/reportView.dart';
import 'package:singleclub/Screens/Pages/reward_view.dart';
import 'package:singleclub/Screens/Pages/salarypage.dart';
import 'package:singleclub/Screens/Pages/setting_view.dart';
import 'package:singleclub/Screens/Pages/vipView_widget.dart';
import 'package:singleclub/Screens/Pages/vs_page.dart';
import 'package:singleclub/Widgets/side_navigation_bar.dart';
import 'package:singleclub/Widgets/user_widget.dart';
import 'package:singleclub/Screens/Pages/users_layout_widget.dart';
import 'package:singleclub/provider/togglepage.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  bool icon1 = false;
  bool icon2 = false;
  bool icon3 = false;
  bool icon4 = false;
  bool icon5 = false;
  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteColor,
      body: Consumer<Myprovider>(
        builder: (context, value, child) => Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // Left Navigation Bar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: 250,
                    color: ColorConstant.whiteColor,
                    child: const SideNavigationBar(),
                  ),
                ),

                // App Bar
                Container(
                  alignment: Alignment.topCenter,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 0.78,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 45,
                                  width: 225,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            borderSide: BorderSide.none),
                                        fillColor: ColorConstant.searchColor,
                                        filled: true,
                                        prefixIcon: Icon(Icons.search),
                                        hintText: 'Search or type'),
                                  ),
                                ),
                                Text(
                                  ' (${DateFormat('hh:mm').format(selectedDate)})  ${DateFormat('EEEE').format(selectedDate)} ${DateFormat(' dd/MM/yyyy').format(selectedDate)}',
                                  style: GoogleFonts.beVietnamPro(
                                      fontSize: 12,
                                      letterSpacing: 1,
                                      color: ColorConstant.blueColor,
                                      fontWeight: FontWeight.w400),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6),
                                        child: Container(
                                          width: 230,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    icon1 = !icon1;
                                                  });
                                                },
                                                child: LineIcon(
                                                  Icons.notifications,
                                                  color: icon1
                                                      ? ColorConstant.blueColor
                                                      : ColorConstant
                                                          .arrowColor,
                                                  size: 32,
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    icon2 = !icon2;
                                                  });
                                                },
                                                child: LineIcon(
                                                  Icons.email,
                                                  color: icon2
                                                      ? ColorConstant.blueColor
                                                      : ColorConstant
                                                          .arrowColor,
                                                  size: 32,
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    icon3 = !icon3;
                                                  });
                                                },
                                                child: LineIcon.whatSApp(
                                                  color: icon3
                                                      ? ColorConstant.blueColor
                                                      : ColorConstant
                                                          .arrowColor,
                                                  size: 32,
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    icon4 = !icon4;
                                                  });
                                                },
                                                child: LineIcon(
                                                  Icons.calendar_month,
                                                  color: icon4
                                                      ? ColorConstant.blueColor
                                                      : ColorConstant
                                                          .arrowColor,
                                                  size: 32,
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    icon5 = !icon5;
                                                  });
                                                },
                                                child: LineIcon(
                                                  Icons.settings,
                                                  color: icon5
                                                      ? ColorConstant.blueColor
                                                      : ColorConstant
                                                          .arrowColor,
                                                  size: 32,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // profile select
                                      const SizedBox(width: 50),
                                      Container(
                                        width: 220,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/user.png'))),
                                            ),
                                            Text(
                                              "King of King’s",
                                              style: GoogleFonts.beVietnamPro(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                  color:
                                                      ColorConstant.blueColor),
                                            ),
                                            Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color: ColorConstant.arrowColor,
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
                        // app Bar End

                        // Data from Menu

                        Container(
                          height: MediaQuery.of(context).size.height * 1.00,
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: _getWidgetByIndex(ind),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

Widget _getWidgetByIndex(int index) {
  switch (index) {
    case 0:
      return const AnalyseWidget(); //ok 1
    case 1:
      return const UserWidget(); // ok 12
    case 2:
      return const ClearPage(); // ok 11
    case 3:
      return const BanView(); // ok
    case 4:
      return const RechargePage(); // ok 4
    case 5:
      return const VsPage(); // ok
    case 6:
      return StorPage(); // ok 5
    case 7:
      return const VipViewWidget(); // ok 3
    case 8:
      return GiftPage(); // ok 6
    case 9:
      return const RewardView(); // ok 6
    case 10:
      return const GamePage(); // ok
    case 11:
      return const AdsPage(); // ok
    case 12:
      return const VerificationPage(); // ok
    case 13:
      return const AgencyPage(); // ok
    case 14:
      return const ReportView(); // ok
    case 15:
      return const Levelview(); // ok
    case 16:
      return const AddAdminPage(); // ok
    case 17:
      return const GuardianView(); // ok
    case 18:
      return const MediaPage(); // ok
    case 19:
      return const BannerView(); // ok
    case 20:
      return const StickerView(); // ok
    case 21:
      return const PaymentPage(); // ok
    case 22:
      return const Settingpage(); // ok
    case 23:
      return const AnalyseWidget(); // signout page pending
    default:
      return const AnalyseWidget();
  }
}
