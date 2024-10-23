import 'package:flutter/material.dart';
import 'custom_chat_bubble.dart';

//This is the chat bubble when the driver receives a message from the user
class ReceiverBubble extends StatelessWidget {
  const ReceiverBubble({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return CustomChatBubble(isUser: false, message: message);
  }
}
