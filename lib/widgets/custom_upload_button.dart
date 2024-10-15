import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:dotted_border/dotted_border.dart';

class CustomUploadButton extends StatelessWidget {
  const CustomUploadButton({
    super.key,
    required this.icon,
    required this.label,
  });

  //This is the icon of the button
  final IconData icon;

  //This is the label of the button
  final String label;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(8),
        color: Palette.accentTextColor,
        strokeWidth: 2,
        child: SizedBox(
          width: 112,
          height: 82,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Palette.accentTextColor,
              ),
              Space.h(8),
              Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ));
  }
}
