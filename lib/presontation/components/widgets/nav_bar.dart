

import 'package:amhere/domain/get_controller/domain/nav_bar_controller.dart';
import 'package:amhere/presontation/components/widgets/notifier_dot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    NavBarController navBarController = Get.put(NavBarController());
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      width: MediaQuery.of(context).size.width,
      height: 130,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(flex:1 ,child: Image.asset('assets/placeholder_image.png', width: 40, height: 40, alignment: Alignment.topLeft,)),
              Expanded(
                flex: 3,
                child: SizedBox(
                  height: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.black12,
                      contentPadding: const EdgeInsets.only(top: 12, left: 20),
                      prefixIcon: const Icon(Icons.search)
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Expanded(child: Text("Am Here", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)),
              Stack(
                children: [
                  IconButton(onPressed: ()=> navBarController.notificationClicked(), icon: const Icon(Icons.notifications_none, size: 25,)),
                  const Positioned(
                    right: 15,
                    top: 15,
                    child: NotifierContainerComponent()),
                ]
              ),
              Stack(
                children: [
                  IconButton(onPressed: ()=> navBarController.chatsClicked(), icon: const Icon(Icons.message_outlined, size: 23,)),
                  const Positioned(
                    right: 15,
                    top: 15,
                    child: NotifierContainerComponent()),
                ]
              ),
            ],
          )
        ],
      ),
    ).animate().fade();
  }
}

