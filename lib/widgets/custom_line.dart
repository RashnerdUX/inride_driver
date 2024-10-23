import 'package:flutter/material.dart';

//This is a container that can be used to draw a line
class CustomLine extends StatelessWidget {
  const CustomLine({
    super.key,
    this.color,
    this.height,
    this.width,
    this.radius,
  });

  //The length of the line
  final double? width;

  //The thickness of the line
  final double? height;

  //The radius of the line
  final double? radius;

  //The color of the line
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 10,
      height: height ?? 1,
      decoration: BoxDecoration(
        color: color ?? Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
