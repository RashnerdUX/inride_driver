import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key, this.userImage, required this.username});

  //This is the user's profile picture
  final String? userImage;

  //This is the user's name
  final String username;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xffffffff),
      child: GestureDetector(
        child: Container(
          padding: const EdgeInsets.fromLTRB(26, 56, 128, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 28,
                backgroundColor: Palette.backgroundColor,
              ),
              Space.w(12),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome Back',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    username,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
