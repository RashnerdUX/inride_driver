import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

//This is a form field widget
class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.controller,
  });

  //Tells the user what to put in the form field
  final String hintText;

  //Displays an icon hint for the user to fill correctly
  final IconData prefixIcon;

  //This helps us manipulate the form field entry
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller ?? TextEditingController(),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey, letterSpacing: 0.6),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 4),
          child: Container(
            width: 24,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
              color: Palette.accentTextColor,
            ),
            child: Icon(
              prefixIcon,
              color: Colors.white,
              size: 18,
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Palette.backgroundColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Palette.backgroundColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      ),
    );
  }
}
