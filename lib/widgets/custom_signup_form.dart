import 'package:flutter/material.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

//THis is the form for sign up
class CustomSignupForm extends StatelessWidget {
  const CustomSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Create your account",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Space.h(20),
        const CustomFormField(
            hintText: "Name", prefixIcon: Icons.person_rounded),
        Space.h(20),
        const CustomFormField(
            hintText: "Phone", prefixIcon: Icons.phone_rounded),
        Space.h(20),
        const CustomFormField(
            hintText: "Email", prefixIcon: Icons.email_rounded),
        Space.h(20),
        const CustomFormField(
            hintText: "Password", prefixIcon: Icons.lock_rounded),
        Space.h(28),
        const CustomDriverSignup(),
        Space.h(12),
        const CustomFilledButton(
          label: "Register",
        ),
      ],
    );
  }
}

class CustomDriverSignup extends StatelessWidget {
  const CustomDriverSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Driver's License"),
        Row(
          children: [],
        )
      ],
    );
  }
}