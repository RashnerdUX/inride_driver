import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';
import 'package:inride_driver/functions.dart';

//This is the screen showing the driver's profile
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static String routeName = "ProfileScreen";

  final String driverName = "Kelvin Akhigbe";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
              size: 24,
            )),
        title: const Text(
          'Profile',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit_rounded,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
        ],
        backgroundColor: Palette.backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Palette.backgroundColor,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: Text(
                      //This widget will convert the user's name and use it to display the first letter as the avatar
                      letterImage(driverName).toUpperCase(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Space.h(8),
                  Text(
                    driverName,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            const CustomProfileSection(
              child: ProfileOverviewSection(),
            ),
            const CustomProfileSection(child: ProfileReviewSection()),
            const CustomProfileSection(child: ProfileAchievementSection()),
          ],
        ),
      ),
    );
  }
}
