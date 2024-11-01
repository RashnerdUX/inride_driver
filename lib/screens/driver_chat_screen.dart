import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';

//This is the screen that appears when the driver wants to interact with the user via text
class DriverChatScreen extends StatelessWidget {
  const DriverChatScreen({super.key});

  static String routeName = "DriverChatScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
              size: 24,
            )),
        title: const Text(
          'Passenger Name',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Container(
                width: 38,
                height: 38,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE4E9F2),
                ),
                child: const Icon(
                  Icons.person_rounded,
                  color: Palette.backgroundColor,
                  size: 24,
                ),
              )),
        ],
        backgroundColor: Palette.backgroundColor,
      ),
      bottomNavigationBar: const CustomChatBox(),
      body: Align(
        alignment: Alignment.topCenter,
        child: ListView.separated(
          itemBuilder: (context, index) =>
              const SenderBubble(message: "From the driver to the customer"),
          separatorBuilder: (context, index) => const RotatedBox(
            quarterTurns: 180,
            child: ReceiverBubble(message: "From the customer to the driver"),
          ),
          itemCount: 2,
          reverse: true,
          shrinkWrap: true,
        ),
      ),
    );
  }
}
