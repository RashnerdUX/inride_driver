import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';

class EnableLocationScreen extends StatelessWidget {
  const EnableLocationScreen({super.key});

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
                const CustomFilledButton(label: "Enable Location"),
                Space.h(8),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 2, color: Palette.accentTextColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "Use Current Location",
                      style: TextStyle(
                        color: Palette.accentTextColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
    ;
  }
}
