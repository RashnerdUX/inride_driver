import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inride_driver/constants.dart';
import 'package:inride_driver/screens/screens_barrel.dart';

class CustomNavDrawerItem extends StatelessWidget {
  const CustomNavDrawerItem({
    super.key, required this.item,
  });

  final NavigationDrawerItem item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item.onTap,
      child: Container(
        padding: EdgeInsets.only(
          left: 24,
          top: 12,
          bottom: 12,
        ),
        child: Row(
          children: [
            item.icon,
            const SizedBox(width: 20),
            Text(item.text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),),
          ],
        ),
      ),
    );
  }
}


class NavigationDrawerItem {
  String text;
  Icon icon;
  Function() onTap;

  NavigationDrawerItem({
    required this.text,
    required this.icon,
    required this.onTap,
  });
}

List destinations = [
  NavigationDrawerItem(
      text: "Home",
      icon: const Icon(
        Icons.home_rounded,
        size: 24,
        color: Colors.black,
      ),
      onTap: () {
        kGlobalNavKey.currentContext?.goNamed(HomeScreen.routeName);
      }),
  NavigationDrawerItem(
      text: "Earnings",
      icon: const Icon(
        Icons.star_border_rounded,
        size: 24,
        color: Colors.black,
      ),
      onTap: () {
        kGlobalNavKey.currentContext?.goNamed(EarningsScreen.routeName);
      }),
  NavigationDrawerItem(
      text: "Inbox",
      icon: const Icon(
        Icons.cloud_upload_rounded,
        size: 24,
        color: Colors.black,
      ),
      onTap: () {
        kGlobalNavKey.currentContext?.goNamed(DriverChatScreen.routeName);
      }),
  NavigationDrawerItem(
      text: "Account settings",
      icon: const Icon(
        Icons.settings_rounded,
        size: 24,
        color: Colors.black,
      ),
      onTap: () {}),
  NavigationDrawerItem(
      text: "Help and Feedback",
      icon: const Icon(
        Icons.help_outline_rounded,
        size: 24,
        color: Colors.black,
      ),
      onTap: () {}),
];
