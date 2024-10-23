import 'package:flutter/material.dart';

//This widget is used to show a navigation item in the custom app bar used on the home screen
class CustomNavigationItem extends StatelessWidget {
  const CustomNavigationItem({
    super.key,
    required this.body,
    this.width,
    this.onTap,
    this.color,
  });

  //This is the widget used in the icon button which doesn't necessarily need to be an icon
  final Widget body;

  //This specifies the width of the widget when it is showing text
  //Deprecated because padding will allow the width to be dynamically sized with its contents
  final double? width;

  //This is the function that activates the item
  final VoidCallback? onTap;

  //This is the color of the icon container
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: 50,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: color ?? Colors.white,
          ),
          child: body,
        ),
      ),
    );
  }
}
