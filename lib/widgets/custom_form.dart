import 'package:flutter/material.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

//This is a form widget for signing into the app
class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Login to your account",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Space.h(20),
        const CustomFormField(
            hintText: "Email", prefixIcon: Icons.email_rounded),
        Space.h(20),
        const CustomFormField(
            hintText: "Password", prefixIcon: Icons.lock_rounded),
        Space.h(12),
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            child: const Text(
              "Forgot Password",
              style: TextStyle(
                color: Palette.accentTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Space.h(12),
        const CustomFilledButton(
          label: "Login",
        ),
      ],
    );
  }
}
