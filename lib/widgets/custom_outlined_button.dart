import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    required this.label,
    this.color,
    this.width,
  });

  //This is the label for the outlined button
  final String label;

  //This is the color of the outline border
  final Color? color;

  //This specifies the width of the button
  final double? width;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        width: width ?? double.infinity,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Palette.accentTextColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Palette.accentTextColor,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
