import 'package:flutter/material.dart';
import 'package:inride_driver/screens/home_screen.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';
import 'package:go_router/go_router.dart';

//This is the screen for getting permission for accessing the Gallery
class GalleryPermissionScreen extends StatelessWidget {
  const GalleryPermissionScreen({super.key});

  static String routeName = "GalleryPermissionScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
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
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 240,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                child: Image.asset(
                  "images/gallery.png",
                  fit: BoxFit.cover,
                ),
              ),
              Space.h(30),
              Column(
                children: [
                  const Text(
                    "Activate access to your gallery",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff191B23),
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Space.h(10),
                  const Text(
                    "You can use photos from your gallery to upload personal photos and documents for your profile.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff767676),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Space.h(30),
              CustomFilledButton(
                label: "Accept",
                onPressed: () => context.goNamed(HomeScreen.routeName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
