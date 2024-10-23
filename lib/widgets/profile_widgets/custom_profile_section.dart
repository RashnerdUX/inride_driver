import 'package:flutter/material.dart';

//There are three sections in the profile screen.
//This is the base widget that determines the content padding and body of the widget
class CustomProfileSection extends StatelessWidget {
  const CustomProfileSection({
    super.key,
    required this.child,
  });

  //This is the body of the section in the profile screen
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: child,
    );
  }
}
