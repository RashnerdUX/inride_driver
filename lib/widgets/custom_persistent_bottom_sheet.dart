import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

//This widget is the persistent bottom sheet that shows at the bottom of the screen
//It can also serve as a modaL bottom sheet and is simply the styling for the app's bottom sheet
class CustomPersistentBottomSheet extends StatelessWidget {
  const CustomPersistentBottomSheet({
    super.key,
    required this.title,
    required this.body,
    this.height,
  });

  //This is the title of the bottom sheet
  final String title;

  //This is the body of the bottom sheet
  final Widget body;

  //This is the height of the bottom sheet
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height ?? 200,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Container(
              width: 50,
              height: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: const Color(0xffdfe3ef),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 24,
              left: 106,
              right: 106,
            ),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Divider(
            color: Color(0xffB5B5B5),
            height: 1.5,
          ),
          Space.h(16),
          body,
        ],
      ),
    );
  }
}
