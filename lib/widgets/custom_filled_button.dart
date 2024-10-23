import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    super.key,
    required this.label,
    this.function,
    this.width,
    this.color,
    this.textColor,
  });

  //The label of the button
  final String label;

  //The function of the button
  final Function? function;

  //This specifies the width of the widget
  final double? width;

//This specifies the color of the button
  final Color? color;

  //This specifies the text color of the widget
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Container(
        width: width ?? double.infinity,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: color ?? Palette.backgroundColor),
        child: Text(
          label,
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
