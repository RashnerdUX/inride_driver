// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inride_driver/models/location_provider.dart';
import 'package:inride_driver/navigation/nav_barrel.dart';
import 'package:inride_driver/screens/screens_barrel.dart';
import 'package:inride_driver/theme/color_palette.dart';
import 'package:go_router/go_router.dart';

//This is the sample splash screen that appears when the user opens the app
class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  static String routeName = "SplashScreen";

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _slideController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _slideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    );

    _slideAnimation =
        Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero).animate(
            CurvedAnimation(parent: _slideController, curve: Curves.easeIn));

    _slideController.addStatusListener((state) {
      print("$state");
      if (state == AnimationStatus.forward) {
        print("Animation started");
      }
    });
  }

  @override
  void dispose() {
    _slideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _slideController.forward();
    Future.delayed(const Duration(seconds: 5), () async {
      final location = await ref.watch(fetchUserLocationProvider);
      print(location.toString());
      ref.read(userLocationProvider.notifier).state = location;
      if (UserAuth.isLoggedIn) {
        context.goNamed(HomeScreen.routeName);
      }
      if (!UserAuth.isLoggedIn) {
        context.goNamed(SignupScreen.routeName);
      }
    });

    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: SlideTransition(
        position: _slideAnimation,
        child: Center(
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
      ),
    );
  }
}
