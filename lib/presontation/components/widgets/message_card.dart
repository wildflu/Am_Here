


import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';

class MessagesCardComponent extends StatelessWidget {
  const MessagesCardComponent({super.key, required this.testMessage, required this.fromMe});
  final String testMessage;
  final bool fromMe;

  @override
  Widget build(BuildContext context) {
    return BubbleSpecialThree(
      text: testMessage,
      color: fromMe ?const Color(0xFFE8E8EE): const Color(0xFF1B97F3) ,
      tail: true,
      isSender: fromMe,
      textStyle: TextStyle(
        color: fromMe? Colors.black: Colors.white,
        fontSize: 16
      ),
    );
  }
}