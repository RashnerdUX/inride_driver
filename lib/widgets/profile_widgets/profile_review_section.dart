import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';

//The profile screen has three sections
//This is the section of the profile that shows a scrollable horinzontal list of customer reviews
class ProfileReviewSection extends StatelessWidget {
  const ProfileReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Recent Rides",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "See all",
                style: TextStyle(
                    color: Palette.accentTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        Space.h(8),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const CustomUserReviewCard(
              customer: "Nana Yusuf",
              message: "Driver was cool and collected",
              image: null,
              time: "A day ago",
            ),
            separatorBuilder: (context, index) => Space.w(24),
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}
