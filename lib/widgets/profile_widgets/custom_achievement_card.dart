import 'package:flutter/material.dart';

//This is the widget that shows the driver's achievement
class AchievementCard extends StatelessWidget {
  const AchievementCard({super.key, required this.icon, required this.title});

  //This is the icon/image that tells of the driver's achievement
  final IconData icon;

  //This is the title of the driver's achievement
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 116,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xffdff9f6),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.amber,
            size: 50,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
