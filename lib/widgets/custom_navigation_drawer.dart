import 'package:flutter/material.dart';
import 'package:inride_driver/constants.dart';
import 'package:inride_driver/custom_shape.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';
import 'package:inride_driver/custom_notch_shape.dart';

class CustomNavDrawerWithNotch extends StatelessWidget {
  const CustomNavDrawerWithNotch({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Drawer(
      backgroundColor: Colors.transparent,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: deviceWidth * 0.70,
            height: deviceHeight,
            color: Colors.white,
            child: Column(
              children: [
                CustomNavHeader(),
                const SizedBox(height: 28),
                Column(
                  children: destinations
                      .map((NavigationDrawerItem) =>
                          CustomNavDrawerItem(item: NavigationDrawerItem))
                      .toList(),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Scaffold.of(context).closeDrawer();
            },
            child: CustomPaint(
              painter: CustomNotch.notchForNav,
              size: const Size(8, 16),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 40,
                  right: 56,
                  top: 52,
                  bottom: 52,
                ),
                child: Icon(
                  Icons.clear_rounded,
                  size: 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomNavHeader extends StatelessWidget {
  const CustomNavHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: Color(0xffF7F9FC),
          width: 4,
        ),
      )),
      padding: EdgeInsets.only(
        top: 72,
        bottom: 24,
        left: 28,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Palette.accentTextColor),
            child: Icon(
              Icons.person_rounded,
              size: 32,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              Text(
                "Driver's name",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              )
            ],
          )
        ],
      ),
    );
  }
}
