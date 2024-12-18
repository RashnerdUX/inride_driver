import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

//Tbh, I don't remember why I created this but I'll test it later
//Just did, I used it to display a block of text in a rounded container on the Earnings page/screen
class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key, required this.title, required this.subtitle});

  //This is the title of the container
  final String title;

  //This is the subtitle of the container
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(
        Radius.circular(12),
      ),
      elevation: 1,
      child: Container(
        width: 224,
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                color: Palette.accentTextColor,
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
            )
          ],
        ),
      ),
    );
  }
}
