import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    super.key,
    required this.label,
    this.function,
    this.width,
  });

  //The label of the button
  final String label;

  //The function of the button
  final Function? function;

  //This specifies the width of the widget
  final double? width;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Container(
        width: width ?? double.infinity,
        height: 50,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Palette.backgroundColor),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
