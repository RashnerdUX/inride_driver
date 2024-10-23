import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';

//There are three sections in the profile screen
//This is the section that shows the Driver's achievements
class ProfileAchievementSection extends StatelessWidget {
  const ProfileAchievementSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Achievements",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
        ),
        Space.h(8),
        const Row(
          children: [
            AchievementCard(
              icon: Icons.emoji_emotions_rounded,
              title: "Friendly Driver",
            ),
          ],
        ),
      ],
    );
  }
}
