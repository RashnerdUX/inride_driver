import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';

//This is the screen that requests for push notification permission
class PushNotificationScreen extends StatelessWidget {
  const PushNotificationScreen({super.key});

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
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                child: Image.asset(
                  "images/push_notification.png",
                  fit: BoxFit.cover,
                ),
              ),
              Space.h(30),
              Column(
                children: [
                  const Text(
                    "Get real-time updates by activating Push notifications",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff191B23),
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Space.h(10),
                  const Text(
                    "Receive notifications about ride requests, passenger details, and important alerts.",
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
                  const CustomFilledButton(label: "Accept"),
                  Space.h(8),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        color: Color(
                            0xff030303), //ToDo: Make this a univrsal style
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
