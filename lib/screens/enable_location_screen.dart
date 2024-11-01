import 'package:flutter/material.dart';
import 'package:inride_driver/screens/payment_method_screen.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';
import 'package:go_router/go_router.dart';

//This is the screen that the user sees to enable location permission
class EnableLocationScreen extends StatelessWidget {
  const EnableLocationScreen({super.key});

  static String routeName = "EnableLocationScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 240,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              child: Image.asset(
                "images/location.png",
                fit: BoxFit.cover,
              ),
            ),
            Space.h(30),
            Column(
              children: [
                const Text(
                  "Enable location",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff191B23),
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Space.h(10),
                const Text(
                  "To enable location, show we will know your location.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff767676),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Space.h(30),
            Column(
              children: [
                CustomFilledButton(
                  label: "Enable Location",
                  onPressed: () =>
                      context.goNamed(PaymentMethodScreen.routeName),
                ),
                Space.h(8),
                const CustomOutlinedButton(
                  label: "Use Current Location",
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
