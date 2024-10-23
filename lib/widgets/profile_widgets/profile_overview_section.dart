import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';

//There are three sections in the profile screen. This is the section showing an overview of the driver's performance
class ProfileOverviewSection extends StatelessWidget {
  const ProfileOverviewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Overview",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
        ),
        Space.h(8),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomReviewCard(
              icon: Icons.star,
              value: "5.0",
              category: "Ratings",
            ),
            CustomReviewCard(
              icon: Icons.person_rounded,
              value: "60%",
              category: "Satisfaction",
            ),
            CustomReviewCard(
              icon: Icons.do_not_disturb_alt_rounded,
              value: "78%",
              category: "Success Rate",
            ),
          ],
        ),
      ],
    );
  }
}
