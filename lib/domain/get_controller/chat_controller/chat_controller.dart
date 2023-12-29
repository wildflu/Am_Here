


import 'package:amhere/data/chat.dart';
import 'package:amhere/data/message.dart';
import 'package:amhere/data/user.dart';
import 'package:amhere/presontation/views/pages/convertation_page.dart';
import 'package:amhere/repositories/chat_repository/chat_repository.dart';
import 'package:amhere/services/login_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatController extends GetxController{

  TextEditingController message = TextEditingController();

  List<Chat>? chats = [];
  ChatRepository chatRepository = ChatRepository();

  getChats () async{
    chats = chatRepository.allChats;
    update();
  }

  chatClicked(Chat chat) {
    Get.to(()=> ConvertationPage(chat: chat));
  }

  sendMessage(Chat chat) async{
    await chatRepository.sendMessage(
      chat, 
      Message(
        text: message.text, 
        sender: loginUser!, 
        reciver: getReciverUser(), 
        isReaded: false,
      )
    );
    message.clear();
    update();
  }

  User getReciverUser() {
    return chats![0].users.first.isLoginUser()? chats![0].users.first:chats![0].users.last;
  }




  @override
  void onInit() {
    super.onInit();
    chatRepository.getAllChats();
    getChats();
  }

}