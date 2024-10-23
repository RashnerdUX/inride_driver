import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';

//This is the bottom sheet that appears to confirm that the picture taken is okay by the user
class SnapshotBottomSheet extends StatelessWidget {
  const SnapshotBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Optimise your photo",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          Space.h(8),
          const Text(
            "Make sure your photo is centered and visible. This will help drivers identify you better",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Space.h(8),
          const CustomDualButtonsRow(
            outlinedLabel: "Take Another",
            filledLabel: "Keep",
          ),
        ],
      ),
    );
  }
}
