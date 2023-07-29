import 'package:flutter/material.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/side_navigation_bar.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteColor,
      body: Container(
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
                  width: 300,
                  color: ColorConstant.searchColor,
                  child: const SideNavigationBar(),
                ),
              ),
              // Other Data
              SingleChildScrollView(
                child: Column(
                  children: [
                    // App Bar
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 50,
                        width: 1060,
                        // color: Colors.yellow,
                        child: Row(
                          children: [
                            Container(
                              height: 45,
                              width: 275,
                              // color: Colors.yellow,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        borderSide: BorderSide.none),
                                    fillColor: ColorConstant.searchColor,
                                    filled: true,
                                    prefixIcon: Icon(Icons.search),
                                    hintText: 'Search or type'),
                              ),
                            ),
                            Text('data')
                          ],
                        ),
                      ),
                    ),
                    // after App Bar
                    Row(
                      children: [
                        // Center Page Content
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: 620,
                            color: ColorConstant.blueColor,
                          ),
                        ),
                        // Right Users Content
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: 422,
                            color: ColorConstant.blueColor,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
