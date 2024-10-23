import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';

//This is the screen showing the map and the driver's status
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  //For sample purposes, this tells if the driver is offline or online
  final bool isOnline = false;

  //For sample purposes, this checks if the  user is verified
  final bool isVerified = false;

  //To maintain the drawer state
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      drawer: const CustomNavigationDrawer(),
      body: Builder(builder: (context) {
        return Stack(
          children: [
            Container(
                // color: Colors.white,
                ),
            Positioned(
                top: 16,
                left: 32,
                right: 32,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomNavigationItem(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      body: const Icon(
                        Icons.menu_rounded,
                        size: 30,
                      ),
                    ),
                    CustomNavigationItem(
                      body: RichText(
                        text: const TextSpan(
                            text: "\$",
                            style: TextStyle(
                                color: Palette.accentTextColor,
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                            children: [
                              TextSpan(
                                text: "20",
                                style: TextStyle(color: Colors.black),
                              )
                            ]),
                      ),
                    ),
                    const CustomNavigationItem(
                        body: Icon(
                      Icons.notifications_none_rounded,
                      size: 30,
                    ))
                  ],
                ))
          ],
        );
      }),
      bottomSheet: isVerified
          ? CustomPersistentBottomSheet(
              title: isOnline ? "You're offline" : "You're online",
              body: isOnline
                  ? const CustomFilledButton(label: "Go Online")
                  : const CustomFilledButton(label: "Go Offline"),
            )
          : const CustomPersistentBottomSheet(
              title: "You're offline",
              body: CustomBodyText(
                text: "Your account will be verified in 24 hours",
              ),
            ),
    );
  }
}

class RideAcceptanceSheet extends StatelessWidget {
  const RideAcceptanceSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPersistentBottomSheet(
        title: "You're Online",
        body: Column(
          children: [
            Text("data"),
            Container(
              child: Column(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomOutlinedButton(label: "Accept"),
                CustomFilledButton(label: "Decline"),
              ],
            )
          ],
        ));
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Material();
  }
}
