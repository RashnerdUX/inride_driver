import 'package:flutter/material.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

//This widget shows the upload buttons required by the driver to verify his identity
class CustomDriverSignup extends StatelessWidget {
  const CustomDriverSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Driver's License",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        Space.h(16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomUploadButton(
              icon: Icons.camera_alt_rounded,
              label: "Front",
            ),
            CustomUploadButton(icon: Icons.camera_alt_rounded, label: "Back"),
            CustomUploadButton(
                icon: Icons.face_6_rounded, label: "Face verification")
          ],
        )
      ],
    );
  }
}
