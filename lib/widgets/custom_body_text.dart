import 'package:flutter/material.dart';

//This widget is used to write a body text flanked by padding
class CustomBodyText extends StatelessWidget {
  const CustomBodyText({
    super.key,
    required this.text,
    this.left,
    this.right,
    this.top,
    this.bottom,
    this.fontSize,
  });

  //This is the text that makes up the widget
  final String text;

  //This is the padding for the left
  final double? left;

  //This is the padding for the right
  final double? right;

  //This is the padding for the top
  final double? top;

  //This is the padding for the bottom
  final double? bottom;

  //This is the size of font for the body text
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: left ?? 40,
        right: right ?? 40,
        bottom: bottom ?? 24,
        top: top ?? 0,
      ),
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: fontSize ?? 22,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
