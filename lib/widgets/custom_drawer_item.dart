import 'package:flutter/material.dart';

class NavigationDrawerItem {
  String text;
  Icon icon;
  VoidCallback onTap;

  NavigationDrawerItem({
    required this.text,
    required this.icon,
    required this.onTap,
  });

  static List<Widget> drawerItems() {
    List<Widget> tempdrawerItems = [];
    for (NavigationDrawerItem item in destinations) {
      Widget newItem = Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: ListTile(
          leading: item.icon,
          title: Text(
            item.text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          onTap: item.onTap,
        ),
      );
      tempdrawerItems.add(newItem);
    }
    print("$tempdrawerItems");
    return tempdrawerItems;
  }
}

List destinations = [
  NavigationDrawerItem(
      text: "Home",
      icon: const Icon(
        Icons.home_rounded,
        size: 24,
        color: Colors.black,
      ),
      onTap: () {}),
  NavigationDrawerItem(
      text: "Earnings",
      icon: const Icon(
        Icons.star_border_rounded,
        size: 24,
        color: Colors.black,
      ),
      onTap: () {}),
  NavigationDrawerItem(
      text: "Inbox",
      icon: const Icon(
        Icons.cloud_upload_rounded,
        size: 24,
        color: Colors.black,
      ),
      onTap: () {}),
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
