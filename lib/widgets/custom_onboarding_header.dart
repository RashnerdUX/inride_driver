import 'package:flutter/material.dart';
import 'package:inride_driver/theme/color_palette.dart';

//This is the header widget used on the signup and signin page
class CustomOnboardingHeader extends StatelessWidget {
  const CustomOnboardingHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Center(
        child: Column(
          children: [
            Text(
              "InDrive",
              style: TextStyle(
                fontSize: 34,
                color: Palette.accentTextColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "Driver",
              style: TextStyle(
                color: Palette.textDarkerColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
