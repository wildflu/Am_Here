


import 'package:amhere/domain/get_controller/chat_controller/chat_controller.dart';
import 'package:amhere/presontation/components/widgets/chat_card.dart';
import 'package:amhere/presontation/components/widgets/empty_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatController>(
      init: ChatController(),
      builder: (controller) {
        return controller.chats!.isNotEmpty
          ? ListView.separated(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: ()=> controller.chatClicked(controller.chats![index]),
                child: ChatCardComponent(
                  lastMessage: controller.chats![index].messages.last.text,
                  name: controller.chats![index].name,
                  newMessagesCount: controller.chats![index].messages.length,
                  islastMessageReaded: controller.chats![index].messages.last.isReaded,
                ),
              );
            }, 
            separatorBuilder: (context, index) {
              return const Divider(color: Colors.black12, thickness: 0.5, height: 10);
            }, 
            itemCount: controller.chats!.length
          )
          :const Center(child: EmptyListComponent());
      },
    );
  }
}