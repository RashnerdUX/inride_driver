import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';

//This is the custom pretty app bar for the Earnings page/screen
class CustomEarningsHeader extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomEarningsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                alignment: Alignment.center,
                height: 210,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  color: Palette.backgroundColor,
                ),
              ),
              Positioned(
                top: 16,
                left: 32,
                right: 32,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomNavigationItem(
                      color: const Color(0xff519cff),
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      body: const Icon(
                        Icons.menu_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "Earnings",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const CustomNavigationItem(
                      color: Color(0xff519cff),
                      body: Icon(
                        Icons.notifications_none_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                top: 88,
                bottom: 36,
                left: 104,
                right: 104,
                child: Column(
                  children: [
                    Text(
                      "Jun 23 - Aug 23",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "\$40,500",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 180,
                left: 16,
                right: 16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomContainer(title: "Rides", subtitle: "123"),
                    Space.w(32),
                    const CustomContainer(title: "Online", subtitle: "23h 42m"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(210);
}
