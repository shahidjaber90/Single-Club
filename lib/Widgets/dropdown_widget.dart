import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Utils/colors.dart';

class DropdownWidget extends StatefulWidget {
  List<String> items;
  String? selectItem;
  String? title;

  DropdownWidget(
      {super.key,
      required this.items,
      required this.selectItem,
      required this.title});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title!,
            textAlign: TextAlign.left,
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          DropdownButtonHideUnderline(
            child: DropdownButtonFormField2<String>(
              isExpanded: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: ColorConstant.blueColor, width: 2)),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0)),
              hint: Text(
                widget.selectItem!,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
              items: widget.items
                  .map((String item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                  .toList(),
              value: selectedValue,
              onChanged: (String? value) {
                setState(() {
                  selectedValue = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////

class DropDown2 extends StatefulWidget {
  @override
  _DropDown2State createState() => _DropDown2State();
}

class _DropDown2State extends State<DropDown2> {
  String? selectTypes;
  String? selectValues;

  List<String> selectType = ['VIP', 'S VIP'];
  Map<String, List<String>> selectValue = {
    'VIP': ['1', '2', '3', '4', '5'],
    'S VIP': ['1', '2', '3', '4', '5'],
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Type:',
            textAlign: TextAlign.left,
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          DropdownButtonHideUnderline(
            child: DropdownButtonFormField2<String>(
              isExpanded: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: ColorConstant.blueColor, width: 2)),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16)),
              value: selectTypes,
              onChanged: (newValue) {
                setState(() {
                  selectTypes = newValue;
                  selectValues = null;
                });
              },
              hint: Text(
                'Select Type',
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
              items: selectType.map((String type) {
                return DropdownMenuItem<String>(
                  value: type,
                  child: Text(type),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Type of Value:',
            textAlign: TextAlign.left,
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          DropdownButtonHideUnderline(
            child: DropdownButtonFormField2<String>(
              isExpanded: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: ColorConstant.blueColor, width: 2)),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16)),
              value: selectValues,
              onChanged: (newValue) {
                setState(() {
                  selectValues = newValue;
                });
              },
              hint: Text(
                'Type of Value',
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
              items:
                  (selectTypes != null && selectValue.containsKey(selectTypes))
                      ? selectValue[selectTypes]!.map((typeValue) {
                          return DropdownMenuItem<String>(
                            value: typeValue.toString(),
                            child: Text(typeValue as String),
                          );
                        }).toList()
                      : [],
            ),
          ),
        ],
      ),
    );
  }
}

////////////////////////////////////////////////////////////////////////////////  33333333

class DropdownWidget3 extends StatefulWidget {
  String? title;
  String? hintText;
  DropdownWidget3({super.key, required this.title, required this.hintText});

  @override
  State<DropdownWidget3> createState() => _DropdownWidget3State();
}

class _DropdownWidget3State extends State<DropdownWidget3> {
  List<Map<String, String>> myItems = [
    {'text': 'Gift', 'img': 'assets/svg/listitem/gift.svg'},
    {'text': 'Medal', 'img': 'assets/svg/listitem/medal.svg'},
    {'text': 'Diamonds', 'img': 'assets/svg/listitem/diamond.svg'},
    {'text': 'VIP Bullet Screen', 'img': 'assets/svg/listitem/bullet.svg'},
    {
      'text': 'Enrance Effect',
      'img': 'assets/svg/listitem/entrance_effect.svg'
    },
    {'text': 'Privileged function', 'img': 'assets/svg/listitem/diamond.svg'},
    {'text': 'Chat Bubbles', 'img': 'assets/svg/listitem/chat_bubbles.svg'},
    {
      'text': 'Profile Picture Decoration',
      'img': 'assets/svg/listitem/female.svg'
    },
    {
      'text': 'Distinguished Profile Card',
      'img': 'assets/svg/listitem/eye.svg'
    },
    {'text': 'Speed Up the Upgrating', 'img': 'assets/svg/listitem/gift.svg'},
    {
      'text': 'Video Call Frame',
      'img': 'assets/svg/listitem/video_call_frame.svg'
    },
    {'text': 'Visitor Privileges', 'img': 'assets/svg/listitem/mute.svg'},
    {'text': 'VIP Gift', 'img': 'assets/svg/listitem/crown.svg'},
    {'text': 'VIP Medal', 'img': 'assets/svg/listitem/medalss.svg'},
    {'text': 'VIP Diamonds', 'img': 'assets/svg/listitem/gym.svg'},
  ];
  Map<String, String>? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title!,
            textAlign: TextAlign.left,
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          DropdownButtonHideUnderline(
            child: DropdownButtonFormField<Map<String, String>>(
              isExpanded: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: ColorConstant.blueColor, width: 2)),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16)),
              hint: Text(
                widget.hintText!,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
              value: selectedValue,
              onChanged: (Map<String, String>? newValue) {
                setState(() {
                  selectedValue = newValue;
                });
              },
              items: myItems.map((myItem) {
                return DropdownMenuItem<Map<String, String>>(
                  value: myItem,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        myItem['img']!,
                        height: 30,
                        width: 30,
                        color: ColorConstant.blueColor,
                      ),
                      const SizedBox(width: 24),
                      Text(
                        myItem['text'].toString(),
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

//////////////////////////////////////////////////

class DropdownWidget4 extends StatefulWidget {
  List<String> items;
  String? selectItem;

  DropdownWidget4({
    super.key,
    required this.items,
    required this.selectItem,
  });

  @override
  State<DropdownWidget4> createState() => _DropdownWidget4State();
}

class _DropdownWidget4State extends State<DropdownWidget4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButtonHideUnderline(
            child: DropdownButtonFormField2<String>(
              isExpanded: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: ColorConstant.blueColor, width: 2)),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0)),
              hint: Text(
                widget.selectItem!,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
              items: widget.items
                  .map((String item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                  .toList(),
              value: selectedValue,
              onChanged: (String? value) {
                setState(() {
                  selectedValue = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////

class DropdownWidget5 extends StatefulWidget {
  DropdownWidget5({super.key});

  @override
  State<DropdownWidget5> createState() => _DropdownWidget5State();
}

class _DropdownWidget5State extends State<DropdownWidget5> {
  List<Map<String, String>> myItems = [
    {'text': 'Gift', 'img': 'assets/svg/listitem/gift.svg'},
    {'text': 'Medal', 'img': 'assets/svg/listitem/medal.svg'},
    {'text': 'Diamonds', 'img': 'assets/svg/listitem/diamond.svg'},
    {'text': 'VIP Bullet Screen', 'img': 'assets/svg/listitem/bullet.svg'},
    {
      'text': 'Enrance Effect',
      'img': 'assets/svg/listitem/entrance_effect.svg'
    },
    {'text': 'Privileged function', 'img': 'assets/svg/listitem/diamond.svg'},
    {'text': 'Chat Bubbles', 'img': 'assets/svg/listitem/chat_bubbles.svg'},
    {
      'text': 'Profile Picture Decoration',
      'img': 'assets/svg/listitem/female.svg'
    },
    {
      'text': 'Distinguished Profile Card',
      'img': 'assets/svg/listitem/eye.svg'
    },
    {'text': 'Speed Up the Upgrating', 'img': 'assets/svg/listitem/gift.svg'},
    {
      'text': 'Video Call Frame',
      'img': 'assets/svg/listitem/video_call_frame.svg'
    },
    {'text': 'Visitor Privileges', 'img': 'assets/svg/listitem/mute.svg'},
    {'text': 'VIP Gift', 'img': 'assets/svg/listitem/crown.svg'},
    {'text': 'VIP Medal', 'img': 'assets/svg/listitem/medalss.svg'},
    {'text': 'VIP Diamonds', 'img': 'assets/svg/listitem/gym.svg'},
  ];
  Map<String, String>? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButtonHideUnderline(
            child: DropdownButtonFormField<Map<String, String>>(
              isExpanded: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: ColorConstant.blueColor, width: 2)),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16)),
              hint: Text(
                'Select Power',
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
              value: selectedValue,
              onChanged: (Map<String, String>? newValue) {
                setState(() {
                  selectedValue = newValue;
                });
              },
              items: myItems.map((myItem) {
                return DropdownMenuItem<Map<String, String>>(
                  value: myItem,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        myItem['img']!,
                        height: 30,
                        width: 30,
                        color: ColorConstant.blueColor,
                      ),
                      const SizedBox(width: 24),
                      Text(
                        myItem['text'].toString(),
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

////////////////////////////////////////////////////////////////////////////////

class DropdownWidget6 extends StatefulWidget {
  String? hintText;
  DropdownWidget6({super.key, required this.hintText});

  @override
  State<DropdownWidget6> createState() => _DropdownWidget6State();
}

class _DropdownWidget6State extends State<DropdownWidget6> {
  List<Map<String, String>> myItems = [
    {'text': 'Anti Mute', 'img': 'assets/svg/listitem/mute.svg'},
    {'text': 'Anti Kick', 'img': 'assets/svg/listitem/gym.svg'},
  ];
  Map<String, String>? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButtonHideUnderline(
            child: DropdownButtonFormField<Map<String, String>>(
              isExpanded: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: ColorConstant.blueColor, width: 2)),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16)),
              hint: Text(
                widget.hintText!,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
              value: selectedValue,
              onChanged: (Map<String, String>? newValue) {
                setState(() {
                  selectedValue = newValue;
                });
              },
              items: myItems.map((myItem) {
                return DropdownMenuItem<Map<String, String>>(
                  value: myItem,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        myItem['img']!,
                        height: 30,
                        width: 30,
                        color: ColorConstant.blueColor,
                      ),
                      const SizedBox(width: 24),
                      Text(
                        myItem['text'].toString(),
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

////////////////////////////////////////////////////////////////////////////////

class DropdownWidget7 extends StatefulWidget {
  List<String> items;
  String? selectItem;

  DropdownWidget7({
    super.key,
    required this.items,
    required this.selectItem,
  });

  @override
  State<DropdownWidget7> createState() => _DropdownWidget7State();
}

class _DropdownWidget7State extends State<DropdownWidget7> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField2<String>(
          isExpanded: true,
          barrierDismissible: false,
          decoration: InputDecoration(
              fillColor: ColorConstant.searchColor,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide:
                      BorderSide(color: ColorConstant.arrowColor, width: 1)),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10)),
          hint: Text(
            widget.selectItem!,
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).hintColor,
            ),
          ),
          items: widget.items
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (String? value) {
            setState(() {
              selectedValue = value;
            });
          },
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////

class DropDown8 extends StatefulWidget {
  @override
  _DropDown8State createState() => _DropDown8State();
}

class _DropDown8State extends State<DropDown8> {
  String? selectTypes;
  String? selectValues;

  List<String> selectType = ['Store','VIP','S VIP','Guardian'];
  Map<String, List<String>> selectValue = {
    'Store': ['Fream','Entrance Effect','Chat Bubbels','Background'],
    'VIP': ['VIP Medal','VIP Bullet Screen','Profile Picture Decoration','Entrance Effect','Video Call Frame','Chat Bubbels'],
    'S VIP': ['VIP Medal','VIP Bullet Screen','Profile Picture Decoration','Entrance Effect','Video Call Frame','Chat Bubbels'],
    'Guardian': ['Ranking Forward','Distinguished Logo','Entry Special Effect','Exclusive Bubbels'],
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButtonHideUnderline(
            child: DropdownButtonFormField2<String>(
              isExpanded: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: ColorConstant.blueColor, width: 2)),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16)),
              value: selectTypes,
              onChanged: (newValue) {
                setState(() {
                  selectTypes = newValue;
                  selectValues = null;
                });
              },
              hint: Text(
                'Select Type',
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
              items: selectType.map((String type) {
                return DropdownMenuItem<String>(
                  value: type,
                  child: Text(type),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 16),
          DropdownButtonHideUnderline(
            child: DropdownButtonFormField2<String>(
              isExpanded: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: ColorConstant.blueColor, width: 2)),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16)),
              value: selectValues,
              onChanged: (newValue) {
                setState(() {
                  selectValues = newValue;
                });
              },
              hint: Text(
                'Type of Value',
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
              items:
                  (selectTypes != null && selectValue.containsKey(selectTypes))
                      ? selectValue[selectTypes]!.map((typeValue) {
                          return DropdownMenuItem<String>(
                            value: typeValue.toString(),
                            child: Text(typeValue as String),
                          );
                        }).toList()
                      : [],
            ),
          ),
        ],
      ),
    );
  }
}
