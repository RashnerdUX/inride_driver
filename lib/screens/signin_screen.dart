import 'package:flutter/material.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            const CustomOnboardingHeader(),
            Space.h(8),
            const CustomForm(),
            Space.h(46),
            const CustomAltSignInOptions(),
          ],
        ),
      ),
    );
  }
}
