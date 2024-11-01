import 'package:flutter/material.dart';
import 'package:inride_driver/theme/spacer.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';

//This is the screen where a new user signs up from
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  static String routeName = "SignUpScreen";

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
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              const CustomOnboardingHeader(),
              Space.h(8),
              const CustomSignupForm(),
            ],
          ),
        ),
      )),
    );
  }
}
