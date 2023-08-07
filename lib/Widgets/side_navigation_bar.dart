import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:singleclub/Local_variables/navigationData.dart';
import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/provider/togglepage.dart';

class SideNavigationBar extends StatefulWidget {
  const SideNavigationBar({super.key});

  @override
  State<SideNavigationBar> createState() => _SideNavigationBarState();
}

bool istapped = false;

class _SideNavigationBarState extends State<SideNavigationBar> {
  List<Color> itemColors =
      List.generate(navigationData.length, (index) => Colors.white);
  List<Color> contentColors =
      List.generate(navigationData.length, (index) => Color(0xff2C50ED));
  int? lastSelectedIndex;
  // File? _imageFile;
  Uint8List coverImage = Uint8List(8);
  // File? _imageFile2;

  // Future<void> _pickImage() async {
  //   final ImagePicker _picker = ImagePicker();
  //   XFile? pickedImage = await _picker.pickImage(source: ImageSource.gallery);
  //   if (pickedImage != null) {
  //     var pickedImages = await pickedImage.readAsBytes();
  //     setState(() {
  //       coverImage = pickedImages;
  //       _imageFile = File('a');
  //     });
  //   }
  // }

  // Future<void> _pickImageprofile() async {
  //   final ImagePicker _picker = ImagePicker();
  //   XFile? pickedImage = await _picker.pickImage(source: ImageSource.gallery);
  //   if (pickedImage != null) {
  //     var pickedImages = await pickedImage.readAsBytes();
  //     setState(() {
  //       profileImage = pickedImages;
  //       _imageFile2 = File('b');
  //       print('profile image $profileImage');
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<Myprovider>(
      builder: (context, value, child) => Column(
        children: [
          // icon & title

          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Container(
                  width: 250,
                  height: 65,
                  color: ColorConstant.blueColor,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                          'assets/images/social.png',
                        ))),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Single Club',
                        style: GoogleFonts.brunoAceSc(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: ColorConstant.whiteColor),
                      ),
                    ],
                  ),
                ),
                // profile images
                Stack(
                  children: [
                    Container(
                      height: 195,
                      width: 250,
                      // color: Colors.yellow,
                    ),
                    Positioned(
                        // left: 2,
                        child: Container(
                      height: 140,
                      width: 250,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/Screenshot_342 1.png'),
                              fit: BoxFit.cover)),
                    )),
                    Positioned(
                      left: 68,
                      top: 81.5,
                      child: Container(
                        height: 113,
                        width: 114,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/images/user.png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ],
                ),
                //  User Name
                Text(
                  'King Of King’s',
                  style: GoogleFonts.poppins(
                      fontSize: 25, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Master Panel',
                  style: GoogleFonts.poppins(
                      fontSize: 12, fontWeight: FontWeight.w500),
                ),
                // List of Menu
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: navigationData.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          value.updateIndex(index);
                          setState(() {
                            ind = index;
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

                          print(navigationData[index]['title']);
                        },
                        child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                                color: itemColors[index],
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1,
                                        color: ColorConstant.blueColor))),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                    ('assets/svg/${navigationData[index]['icon']}'),
                                    color: contentColors[index],
                                  ),
                                  Text(
                                    '${navigationData[index]['title']}',
                                    style: GoogleFonts.poppins(
                                        color: contentColors[index],
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.5),
                                  ),
                                  Icon(Icons.arrow_forward_ios_rounded,
                                      color: contentColors[index]),
                                ],
                              ),
                            )),
                      );
                    },
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
