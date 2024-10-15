import 'package:flutter/material.dart';
import 'package:inride_driver/theme/color_palette.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34),
                color: Colors.white,
              ),
            ),
            const Text(
              "InRide",
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.w900,
              ),
            ),
            const Text(
              "Driver",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
