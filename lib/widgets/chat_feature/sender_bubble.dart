import 'package:flutter/material.dart';
import 'custom_chat_bubble.dart';

//This is the chat bubble that appears when the driver sends a message
class SenderBubble extends StatelessWidget {
  const SenderBubble({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return CustomChatBubble(
      isUser: true,
      message: message,
    );
  }
}
