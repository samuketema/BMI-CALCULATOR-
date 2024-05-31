import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(color: Color(0xff8d8e98), fontSize: 18.0);

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});

  IconData? icon;
  String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon as IconData,
          color: Colors.white,
          weight: 500,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(label as String, style: labelTextStyle)
      ],
    );
  }
}
