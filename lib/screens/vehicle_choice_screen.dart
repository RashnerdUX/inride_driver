import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';

//This is the screen where the user picks their preferred vehcile for providing their service
class VehicleChoiceScreen extends StatelessWidget {
  const VehicleChoiceScreen({super.key});

  //For sample purposes, this is the overall value for this list of CustomChoiceWithRadio list
  final selectedChoice = 1;

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
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
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
              label: "Car",
              value: 1,
              groupValue: selectedChoice,
            ),
            Space.h(16),
            CustomChoiceWithRadio(
              label: "Tricycle",
              value: 2,
              groupValue: selectedChoice,
            ),
            Space.h(16),
            CustomChoiceWithRadio(
              label: "Bus",
              value: 3,
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
