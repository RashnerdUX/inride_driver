import 'package:flutter/material.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

class CustomAltSignInOptions extends StatelessWidget {
  const CustomAltSignInOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomLine(color: Palette.accentTextColor),
            Space.w(12),
            const Text(
              "Or Login with",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            Space.w(12),
            const CustomLine(color: Palette.accentTextColor),
          ],
        ),
        Space.h(24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomSocialMediaButton(path: "images/google.png"),
            Space.w(40),
            const CustomSocialMediaButton(path: "images/facebook.png"),
            Space.w(40),
            const CustomSocialMediaButton(path: "images/twitter.png"),
          ],
        ),
        Space.h(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Haven't signed up yet?",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Palette.textColor3),
            ),
            GestureDetector(
              child: const Text(
                "Signup",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Palette.accentTextColor,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
