


import 'package:amhere/domain/get_controller/notifications_controller/notification_controller.dart';
import 'package:amhere/presontation/components/widgets/empty_list.dart';
import 'package:amhere/presontation/components/widgets/notifier_dot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotificationController>(
        init: NotificationController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: const Text("Notification"),
              actions: [
                IconButton(onPressed: ()=> controller.clearAllNotifications(), icon: const Icon(Icons.layers_clear_rounded))
              ],
            ),
            body: controller.notifications!.isNotEmpty
            ? ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: controller.notifications!.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: ()=> controller.readNotification(controller.notifications![index]),
                child: NotificationCardComponent(
                  title: controller.notifications![index].title,
                  content: controller.notifications![index].content,
                  time: controller.notifications![index].timeRecived,
                  isReaded: controller.notifications![index].isReaded,
                ),
              ),
              separatorBuilder: (context, index) => const Divider(color: Colors.black12, height: 20, thickness: 0.5), 
            )
            : const Center(child: EmptyListComponent()),
          );
      }
    );
  }
}

class NotificationCardComponent extends StatelessWidget {
  const NotificationCardComponent({super.key, required this.content, required this.time, required this.title, required this.isReaded});
  final String title;
  final String content;
  final DateTime time;
  final bool isReaded;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        isReaded? Container() : const NotifierContainerComponent(color: Colors.red),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(title, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: isReaded ? Colors.black26 : Colors.black),),
                    Text("${time.hour}:${time.minute} PM", style:const TextStyle(color: Colors.grey),)
                  ],
                ),
                Text(content, style: TextStyle(color: isReaded ? Colors.black26 : Colors.black))
              ],
            ),
          ),
        ),
      ],
    ).animate().fade(duration: const Duration(milliseconds: 500)).moveY(begin: 20, end: 0, duration: const Duration(milliseconds: 500));
  }
}