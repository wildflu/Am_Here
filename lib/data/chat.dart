
import 'package:amhere/data/message.dart';
import 'package:amhere/data/user.dart';

class Chat {
  String name;
  List<User> users;
  List<Message> messages;
  Chat (
    {
      required this.name,
      required this.users,
      required this.messages
    }
  );

  factory Chat.fromJson(Map<String, dynamic> chat) {
    return Chat(name: chat['name'], users: chat['users'], messages: chat['messages']);
  }
}