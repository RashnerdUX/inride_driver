import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inride_driver/screens/screens_barrel.dart';
import 'package:inride_driver/theme/color_palette.dart';
import 'package:go_router/go_router.dart';

//This is the sample splash screen that appears when the user opens the app
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static String routeName = "SplashScreen";

  @override
  Widget build(BuildContext context) {
    final timer = Timer(
        Duration(seconds: 2), () => context.goNamed(SignupScreen.routeName));

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
