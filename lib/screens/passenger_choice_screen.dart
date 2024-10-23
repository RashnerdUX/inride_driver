import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';

//This is the screen where the driver indicates how many passengers their vehicle can carry
class PassengerChoiceScreen extends StatelessWidget {
  const PassengerChoiceScreen({super.key});

  //For sample purposes, this will serve as the selection for the choice widgets
  final int selectedChoice = 3;

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
        title: const Text(
          "Detail",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What type of vehicle do you use?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            Space.h(24),
            CustomChoiceWithRadio(
              label: "1",
              value: 1,
              groupValue: selectedChoice,
            ),
            Space.h(16),
            CustomChoiceWithRadio(
              label: "2",
              value: 2,
              groupValue: selectedChoice,
            ),
            Space.h(16),
            CustomChoiceWithRadio(
              label: "3",
              value: 3,
              groupValue: selectedChoice,
            ),
            Space.h(16),
            CustomChoiceWithRadio(
              label: "4",
              value: 4,
              groupValue: selectedChoice,
            ),
            Space.h(16),
            CustomChoiceWithRadio(
              label: "5",
              value: 5,
              groupValue: selectedChoice,
            ),
            Space.h(16),
            CustomChoiceWithRadio(
              label: "6",
              value: 6,
              groupValue: selectedChoice,
            ),
            const Spacer(),
            const CustomFilledButton(label: "Next"),
          ],
        ),
      )),
    );
  }
}
