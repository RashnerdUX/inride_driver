import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

//This widget serves as the bottom chat box for the driver
class CustomChatBox extends StatelessWidget {
  const CustomChatBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: const Color(0xfff5f5f7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xfffdfdfd),
            ),
            child: const TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Type a message",
                hintStyle: TextStyle(
                    color: Color(0xffc8c7cc),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.send_rounded,
              size: 24,
              color: Palette.accentTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
