import 'package:flutter/material.dart';
import 'package:inride_driver/screens/screens_barrel.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';
import 'package:go_router/go_router.dart';

//This is the screen where the user will be asked to take a profile picture or set one from gallery
class SetProfilePictureScreen extends StatelessWidget {
  const SetProfilePictureScreen({super.key});

  static String routeName = "SetProfilePicScreen";

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
        title: const Text(
          "Detail",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 32,
            right: 32,
            top: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset(
                    "images/profile_pic.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Space.h(32),
              const Text(
                "Add your photo for security purposes",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Space.h(6),
              const Text(
                "Your photo will be used so users can identify you.",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xff767676),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Space.h(10),
              const Text(
                "Users can only see your photo during a trip and will not have access to it once it is completed.",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xff767676),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Space.h(30),
              Column(
                children: [
                  CustomFilledButton(
                    label: "Take Photo",
                    onPressed: () => context.goNamed(TakePhotoScreen.routeName),
                  ),
                  Space.h(8),
                  TextButton(
                    onPressed: () {
                      context.goNamed(GalleryPermissionScreen.routeName);
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        color: Color(
                            0xff030303), //ToDo: Make this a univrsal style
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
