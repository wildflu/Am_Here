
import 'package:amhere/data/chat.dart';
import 'package:amhere/data/message.dart';
import 'package:amhere/data/user.dart';
import 'package:amhere/services/login_user.dart';
import 'package:get/get.dart';

class ChatRepository extends GetxController{
  List<Chat> ?allChats;
  Future<void> getAllChats ()async{
    allChats = [
      Chat(
        name: "Room1", 
        users: [
          loginUser!,
          User(userName: "Mikassa", email: "mikassa@gmail.com", password: "123", age: 12, city: "safi", country: "Morroco", gender: "Female", lant: 123, lang: 456),
        ],
        messages: [
          Message(text: "Hi There, can we talk", sender: loginUser!, reciver: User(userName: "Mikassa", email: "mikassa@gmail.com", password: "123", age: 12, city: "safi", country: "Morroco", gender: "Female", lant: 123, lang: 456), isReaded: false),
          Message(text: "yes, of course my name is eran", sender: User(userName: "Mikassa", email: "mikassa@gmail.com", password: "123", age: 12, city: "safi", country: "Morroco", gender: "Female", lant: 123, lang: 456), reciver: loginUser!, isReaded: false),
          Message(text: "nice to met you, am mikassa", sender: loginUser!, reciver: User(userName: "Mikassa", email: "mikassa@gmail.com", password: "123", age: 12, city: "safi", country: "Morroco", gender: "Female", lant: 123, lang: 456), isReaded: false),
        ]
      ),
      Chat(
        name: "Room2", 
        users: [
          User(userName: "Armin", email: "Armin@gmail.com", password: "123", age: 12, city: "safi", country: "Morroco", gender: "Male", lant: 123, lang: 456),
          loginUser!,
        ], 
        messages: [
          Message(text: "do you will came ??", sender: User(userName: "Armin", email: "Armin@gmail.com", password: "123", age: 12, city: "safi", country: "Morroco", gender: "Male", lant: 123, lang: 456), reciver: loginUser!, isReaded: false),
          Message(text: "am waiting you", sender: User(userName: "Armin", email: "Armin@gmail.com", password: "123", age: 12, city: "safi", country: "Morroco", gender: "Male", lant: 123, lang: 456), reciver: loginUser!, isReaded: false),
          Message(text: "yes, inchallah i'll came. just keep witing ", sender: loginUser!, reciver: User(userName: "Armin", email: "Armin@gmail.com", password: "123", age: 12, city: "safi", country: "Morroco", gender: "Male", lant: 123, lang: 456), isReaded: false),
          Message(text: "ok, don't be late we have so much stuff to do, you have to in here early", sender: User(userName: "Armin", email: "Armin@gmail.com", password: "123", age: 12, city: "safi", country: "Morroco", gender: "Male", lant: 123, lang: 456), reciver: loginUser!, isReaded: false),
          Message(text: "see you soon than", sender: loginUser!, reciver: User(userName: "Armin", email: "Armin@gmail.com", password: "123", age: 12, city: "safi", country: "Morroco", gender: "Male", lant: 123, lang: 456), isReaded: true),
        ]
      ),
    ];
  }
  Future<void> sendMessage(Chat chat, Message ms) async{
    chat.messages.add(ms);
    update();
  }

}
