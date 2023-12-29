
import 'package:amhere/presontation/components/widgets/notifier_dot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';


class ChatCardComponent extends StatelessWidget {
  const ChatCardComponent({super.key, required this.name, required this.newMessagesCount, required this.lastMessage, required this.islastMessageReaded});
  final String name;
  final int newMessagesCount;
  final String lastMessage;
  final bool islastMessageReaded;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
              Row(
                children: [
                  const NotifierContainerComponent(),
                  const SizedBox(width: 4,),
                  Text("($newMessagesCount) MS"),
                ],
              )
            ],
          ),
          const SizedBox(height: 15,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                flex: 3,
                child: SizedBox(
                  height: 70,
                  child: Stack(
                    children: [
                      ChatUserProfile(),
                      Positioned(
                        top: 5,
                        left: 25,
                        child: ChatUserProfile()),
                        Positioned(
                        top: 10,
                        left: 50,
                        child: ChatUserProfile()),
                    ],
                  ),
                ),
              ),
              Expanded(flex:2,child: Text(lastMessage.length>17 ? lastMessage.substring(0, 17):lastMessage, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: islastMessageReaded ?Colors.black26 :Colors.black),))
            ],
          )
        ],
      ),
    ).animate().moveY(begin: 20, end: 0);
  }
}

class ChatUserProfile extends StatelessWidget {
  const ChatUserProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.blueAccent),
        borderRadius: BorderRadius.circular(30)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset('assets/one.jpg', width: 50, height: 50,fit: BoxFit.cover,),
      ),
    );
  }
}