import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';

class GalleryPermissionScreen extends StatelessWidget {
  const GalleryPermissionScreen({super.key});

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
              const CustomFilledButton(label: "Accept"),
            ],
          ),
        ),
      ),
    );
  }
}

class SnapshotBottomSheet extends StatelessWidget {
  const SnapshotBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Optimise your photo",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          Space.h(8),
          const Text(
            "Make sure your photo is centered and visible. This will help drivers identify you better",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Space.h(8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomOutlinedButton(
                label: "Take Another",
                width: 200,
              ),
              CustomFilledButton(
                label: "Keep",
                width: 200,
              ),
            ],
          )
        ],
      ),
    );
  }
}
