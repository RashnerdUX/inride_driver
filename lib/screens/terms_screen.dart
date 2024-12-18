import 'package:flutter/material.dart';
import 'package:inride_driver/screens/push_notification_screen.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/custom_filled_button.dart';
import 'package:go_router/go_router.dart';

//This is the screen where the user reads and accepts our terms and conditions
class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  static String routeName = "TermsOfUseScreen";

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
          padding: const EdgeInsets.only(top: 24),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(40),
                  right: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffedf3ff),
                    blurRadius: 250,
                    offset: Offset(0, -4),
                  ),
                  BoxShadow(
                    color: Color(0xfff2f6ff),
                    blurRadius: 44.7,
                    offset: Offset(0, -0.5),
                  )
                ]),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "InRide Terms of Service",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        ),
                        Space.h(12),
                        const Text(
                          'By downloading, accessing, or using this application, you agree to the following terms and conditions. If you do not agree with them, please do not use the app.',
                          style: TextStyle(
                              color: Color(0xff3E3E3E),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        Space.h(4),
                        const Text(
                          '1. Use of the InDrive Passenger App:',
                          style: TextStyle(
                              color: Color(0xff3E3E3E),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'The InDrive Passenger App is designed for passengers who request rides from professional drivers. Key functionalities include requesting rides, tracking driver locations, communicating with drivers, and completing trips. Passengers can view trip history, manage their account, and rate drivers through the app.',
                            style: TextStyle(
                                color: Color(0xff3E3E3E),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Space.h(4),
                        const Text(
                          '2. User Responsibility:',
                          style: TextStyle(
                              color: Color(0xff3E3E3E),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Prioritize safety by following instructions from drivers and using responsibly. Use the app only when safe to do so. Follow all laws and regulations.',
                            style: TextStyle(
                                color: Color(0xff3E3E3E),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: CustomFilledButton(
                    label: "Agree",
                    onPressed: () {
                      context.goNamed(PushNotificationScreen.routeName);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // bottomSheet: Container(
      //   padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     boxShadow: [
      //       BoxShadow(
      //         offset: Offset(2, -4),
      //         blurRadius: 2,
      //         blurStyle: BlurStyle.outer,
      //         spreadRadius: 10,
      //       )
      //     ],
      //     borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      //   ),
      //   child: CustomFilledButton(
      //     label: "Agree",
      //     onPressed: () {
      //       context.goNamed(PushNotificationScreen.routeName);
      //     },
      //   ),
    );
  }
}
