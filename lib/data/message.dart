
import 'package:amhere/data/user.dart';

class Message{
  String text;
  User sender;
  User reciver;
  bool isReaded;
  Message({required this.text,required this.sender, required this.reciver, required this.isReaded});
  factory Message.fromJson(Map<String, dynamic> message){
    return Message(text: message['text'], sender: message['sender'], reciver: message['reciver'], isReaded: message['is_readed']);
  }
}
