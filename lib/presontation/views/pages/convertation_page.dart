

import 'package:amhere/data/chat.dart';
import 'package:amhere/domain/get_controller/chat_controller/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

class ConvertationPage extends StatelessWidget {
  const ConvertationPage({super.key, required this.chat});
  final Chat chat;
  @override
  Widget build(BuildContext context) {
    ChatController chatController = Get.find();
    return GetBuilder<ChatController>(
      init: ChatController(),
      builder: (controller) {
        return Scaffold(
        appBar: AppBar(
          title: Text(chat.name),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chat.messages.length,
                itemBuilder: (context, index) {
                  bool isLoginUser = chat.messages[index].sender.isLoginUser();
                  return Align(
                    alignment: isLoginUser ? Alignment.topRight: Alignment.topLeft,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:isLoginUser? Colors.grey:Colors.blueGrey),
                      margin: const EdgeInsets.all(5),
                      child: Text(chat.messages[index].text)
                    )
                  ).animate().fade();
                },
              ),
            ),
            Container(
              height: 60,
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(1, 1),
                    blurRadius: 5,
                    color: Colors.black12
                  )
                ]
              ),
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  Expanded(
                    flex:1,
                    child: IconButton(
                      onPressed: (){
                        Get.bottomSheet(
                          Container(
                            height: double.infinity,
                            color: Colors.white,
                          ).animate()
                        );
                      },
                      icon: const Icon(Icons.location_history)
                    ).animate().fade()
                  ),
                  Expanded(flex:6,
                    child: TextFormField(
                      controller: chatController.message,
                      decoration: const InputDecoration(
                        hintText: "your message",
                        border: InputBorder.none
                      ),
                    )
                  ).animate().fade(),
                  Expanded(
                    flex:1,
                    child: IconButton(
                      onPressed: ()=> chatController.sendMessage(chat),
                      icon: const Icon(Icons.send)
                    ).animate().fade()
                  ),
                ],
              ),
            )
          ],
        ),
      );
      },
    );
  }
}
