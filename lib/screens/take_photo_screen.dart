import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inride_driver/screens/screens_barrel.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

//This is the screen where the user takes his picture from
class TakePhotoScreen extends StatelessWidget {
  const TakePhotoScreen({super.key});

  static String routeName = "TakePicScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.clear_rounded,
            size: 24,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 32,
            right: 32,
            top: 24,
            bottom: 32,
          ),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: 306,
                  height: 306,
                  child: Image.asset(
                    "images/profile_pic.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomIcon(icon: Icons.image_rounded),
                  Space.w(24),
                  GestureDetector(
                    onTap: () {
                      context.goNamed(GalleryPermissionScreen.routeName);
                    },
                    child: Container(
                      width: 92,
                      height: 92,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Palette.accentTextColor,
                      ),
                      child: const Icon(
                        Icons.camera_alt_rounded,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  ),
                  Space.w(24),
                  const CustomIcon(icon: Icons.flash_on_rounded),
                  Space.w(24),
                  const CustomIcon(icon: Icons.cameraswitch_rounded),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
  });

  //This is the icon for this custom icon class
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 24,
      child: Icon(icon),
    );
  }
}
