import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';

class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: MediaQuery.of(context).size.width * 0.8,
      // shape: ,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 0),
        child: ListView(
          children: [
            const CustomDrawerHeader(username: "Rashnerd"),
            const Divider(
              thickness: 4,
              color: Color(0xffF7F9FC),
            ),
            Space.h(24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: NavigationDrawerItem.drawerItems(),
            ),
            Space.h(100),
            TextButton(
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(
                      Icons.exit_to_app_rounded,
                      color: Color(0xffFE0F00),
                      size: 24,
                    ),
                    SizedBox(width: 16),
                    Text(
                      "Log Out",
                      style: TextStyle(
                        color: Color(0xffFE0F00),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
