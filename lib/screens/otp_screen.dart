import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inride_driver/main.dart';
import 'package:inride_driver/screens/screens_barrel.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';

//This is the screen where the user enters their OTP
class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  static String routeName = "OtpScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 24,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 32, right: 32, top: 24, bottom: 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Insert the OTP code",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const Text(
                "Enter the code sent to Placeholder@gmail.com",
                style: TextStyle(
                    color: Color(0xff767676),
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              Space.h(20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomOtpField(),
                  CustomOtpField(),
                  CustomOtpField(),
                  CustomOtpField(),
                  CustomOtpField(),
                  CustomOtpField(),
                ],
              ),
              const Spacer(),
              CustomFilledButton(
                label: "Continue",
                onPressed: () {
                  context.goNamed(TermsScreen.routeName);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
