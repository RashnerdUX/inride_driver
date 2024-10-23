import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

//This is the widget that displays a summary of the driver's performance in the business
class CustomReviewCard extends StatelessWidget {
  const CustomReviewCard({
    super.key,
    required this.icon,
    required this.value,
    required this.category,
  });

  //This is the icon for the review card
  final IconData icon;

  //This is the parameter value for the category
  final String value;

  //This is the name of the category
  final String category;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.25,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              width: 32,
              height: 32,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xfff3f8ff)),
              child: Icon(
                icon,
                color: Palette.backgroundColor,
                size: 24,
              ),
            ),
            Space.h(10),
            Text(
              value,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
            Space.h(2),
            Text(
              category,
              style: const TextStyle(
                  color: Color(0xff72777A),
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
