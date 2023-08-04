import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/admin_field_heading.dart';
import 'package:singleclub/Widgets/admin_textfield.dart';
import 'package:singleclub/Widgets/admin_textfiled_widget2.dart';
import 'package:singleclub/Widgets/textfield_heading.dart';
import 'package:singleclub/Widgets/textfield_widget.dart';
import 'package:singleclub/Widgets/textfield_widget2.dart';

class AddAdminWidget extends StatefulWidget {
  const AddAdminWidget({super.key});

  @override
  State<AddAdminWidget> createState() => _AddAdminWidgetState();
}

class _AddAdminWidgetState extends State<AddAdminWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.025),
      child: Container(
        width: 295,
        height: 700,
        color: ColorConstant.searchColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // title
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.24,
                height: 45,
                color: ColorConstant.blueColor,
                child: Text(
                  'Create Admin',
                  style: GoogleFonts.poppins(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: ColorConstant.whiteColor,
                      letterSpacing: 0.5),
                ),
              ),
              // cover & profile images
              Container(
                width: MediaQuery.of(context).size.width * 0.21,
                height: 160,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: 120,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/Screenshot_342 1.png'),
                              fit: BoxFit.fill)),
                    ),
                    // profile
                    Positioned(
                      top: 34,
                      left: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.10,
                        height: 140,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/images/user.png'),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  ],
                ),
              ),

              // // text fields input
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 521,
                  width: MediaQuery.of(context).size.width * 0.18,
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AdminFieldHeading(headingText: 'Admin Name'),
                        ],
                      ),
                      AdminTextFieldWidget(),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AdminFieldHeading(headingText: 'Category'),
                        ],
                      ),
                      AdminTextFieldWidget(),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AdminFieldHeading(headingText: 'Number'),
                        ],
                      ),
                      AdminTextFieldWidget(),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AdminFieldHeading(headingText: 'Email'),
                        ],
                      ),
                      AdminTextFieldWidget(),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AdminFieldHeading(headingText: 'Password'),
                        ],
                      ),
                      AdminTextFieldWidget(),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AdminFieldHeading(headingText: 'Facebook'),
                        ],
                      ),
                      AdminTextFieldWidget(),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AdminFieldHeading(headingText: 'Whatsapp'),
                        ],
                      ),
                      AdminTextFieldWidget(),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AdminFieldHeading(headingText: 'Power of Antoni'),
                        ],
                      ),
                      AdminTextFieldWidget2(labelText: 'Select Power'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.21,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: ColorConstant.blueColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Cancel',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: ColorConstant.whiteColor,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: ColorConstant.blueColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Save',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: ColorConstant.whiteColor,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
