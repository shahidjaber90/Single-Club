import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/colors.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool tap1 = false;
  Color whiteColor = (Colors.white);
  Color blueColor = const Color(0xff2C50ED);
  final List text = [
    "User Name",
    "ld Number",
    "Victim Name",
    "ld Serial ",
    "Category",
    "Document",
    "Date/Time",
    "Decision",
    "Action",
  ];

  final List text2 = [
    "King of Kings",
    "787546",
    "Ashraf",
    "786522",
    "Hate speech",
    "Show",
    "24-Feb-2023",
    " Name",
    " Active\nBan\nDevice Ban",
  ];
  final List list3 = [
    "Date",
    "Transictin ld",
    "Type",
    "Rate",
    "Value",
    "Return",
    "Status",
  ];
  List<String> dates = [
    '23-4-2023',
    '15-8-2023',
    '7-11-2023',
    '2-2-2023',
    '10-6-2023',
  ];
  List tid = [
    "032123",
    "032123",
    "032123",
    "032123",
    "032123",
  ];
  List amount = [
    "\$400",
    "\$55",
    "\$40",
    "\$30",
    "\$40",
  ];
  List status = [
    "Completed",
    "Completed",
    "Completed",
    "Ended",
    "Completed",
  ];
  List rreturn = [
    "#03023",
    "#03123",
    "#32100",
    "#21000",
    "#18000",
  ];
  List rate = [
    "Basic",
    "Standard",
    "Basic",
    "Basic",
    "Basic",
  ];
  List images = [
    "assets/icons/mastercard.png",
    "assets/icons/paypal.png",
    "assets/icons/mastercard.png",
    "assets/icons/paypal.png",
    "assets/icons/mastercard.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 300,
        backgroundColor: ColorConstant.whiteColor,
        elevation: 0,
        title: GestureDetector(
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
              'Make Complain',
              style: TextStyle(
                  color: blueColor,
                  letterSpacing: 0.5,
                  fontSize: 11,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
      backgroundColor: ColorConstant.whiteColor,
      body: Column(
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
            height: 70,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorConstant.whiteColor
                // color: ColorConstant.whiteColor,
                ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text2[0],
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      text2[1],
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      text2[2],
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      text2[3],
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      text2[4],
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Container(
                      color: ColorConstant.blueColor,
                      height: 30,
                      width: 80,
                      child: Center(
                        child: Text(
                          text2[5],
                          style: GoogleFonts.poppins(
                              color: ColorConstant.whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Text(
                      text2[6],
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      text2[7],
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      text2[8],
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ]),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Transiction",
                style: GoogleFonts.poppins(
                    fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ],
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  list3.length,
                  (index) => Text(
                        list3[index],
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      )),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorConstant.whiteColor,
              ),
              child: ListView.builder(
                itemCount: rate.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ColorConstant.whiteColor
                        // color: ColorConstant.whiteColor,
                        ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            dates[index],
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            tid[index],
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          //image
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset(images[index]),
                          ),
                          Text(
                            rate[index],
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            amount[index],
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            rreturn[index],
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          Container(
                            color: status[index] == "Completed"
                                ? Colors.orange.shade300
                                : Colors.red.shade400,
                            height: 30,
                            width: 100,
                            child: Center(
                              child: Text(
                                status[index],
                                style: GoogleFonts.poppins(
                                    color: ColorConstant.whiteColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
