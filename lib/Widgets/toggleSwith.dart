import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/provider/togglepage.dart';

class ToggleSwitchWidget extends StatefulWidget {
  bool getValue;
  ToggleSwitchWidget({super.key, required this.getValue});

  @override
  State<ToggleSwitchWidget> createState() => _ToggleSwitchWidgetState();
}

class _ToggleSwitchWidgetState extends State<ToggleSwitchWidget> {
  toggleSwitch(newValue1) {
    if (widget.getValue) {
      setState(() {
        widget.getValue = !widget.getValue;
      });
    } else {
      setState(() {
        widget.getValue = !widget.getValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18,
      width: 50,
      decoration: BoxDecoration(
          color: widget.getValue
              ? Colors.red.withOpacity(0.70)
              : ColorConstant.blueColor.withOpacity(0.70),
          border: Border.all(
              color: widget.getValue ? Colors.red : ColorConstant.blueColor),
          borderRadius: BorderRadius.circular(24)),
      child: Transform.scale(
          scale: 1.2,
          child: Switch(
            onChanged: (newValue) {
              toggleSwitch(newValue);
            },
            value: widget.getValue,
            activeColor: Colors.red.shade800,
            activeTrackColor: Colors.white,
            inactiveThumbColor: ColorConstant.blueColor,
            inactiveTrackColor: Colors.white,
          )),
    );
  }
}
