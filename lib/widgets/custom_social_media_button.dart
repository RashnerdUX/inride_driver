import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

//This widget is the button used for social media sign up/signin
class CustomSocialMediaButton extends StatelessWidget {
  const CustomSocialMediaButton({
    super.key,
    required this.path,
    this.function,
  });

  //This will be the icon of the button
  final String path;

  //This will be the function of the button
  final Function? function;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
            color: Palette.accentTextColor.withOpacity(0.1), width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: TextButton(onPressed: () {}, child: Image.asset(path)),
    );
  }
}
