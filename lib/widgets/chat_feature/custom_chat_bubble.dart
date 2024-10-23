import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'custom_triangle.dart';

//This is a custom chat bubble for our app
//It appears when the user sends a message/receives in a ListView widget
class CustomChatBubble extends StatelessWidget {
  const CustomChatBubble(
      {super.key, required this.isUser, required this.message});

  //This determines if the message is from a sender or receiver. It will invert the triangle and the bubble
  final bool isUser;

  //This is the text that will be displayed in the chat bubble
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment:
                  isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 12, 16, 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(12),
                      bottomLeft:
                          isUser ? const Radius.circular(12) : Radius.zero,
                      topRight: const Radius.circular(12),
                      bottomRight:
                          isUser ? Radius.zero : const Radius.circular(12),
                    ),
                    color: isUser
                        ? Palette.backgroundColor
                        : const Color(0xffEFEFF4),
                  ),
                  child: Text(
                    message,
                    style: TextStyle(
                      color: isUser ? Colors.white : Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Transform.flip(
                  flipX: !isUser,
                  child: CustomPaint(
                    painter: Triangle(
                      background: isUser
                          ? Palette.backgroundColor
                          : const Color(0xffEFEFF4),
                    ),
                    size: const Size.square(10),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
