

import 'package:amhere/domain/get_controller/models/BottonRoute.dart';
import 'package:amhere/presontation/views/pages/chats_page.dart';
import 'package:amhere/presontation/views/pages/explore_page.dart';
import 'package:amhere/presontation/views/pages/home_page.dart';
import 'package:amhere/presontation/views/pages/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarController extends GetxController {

  int currantIndexPage = 0;

  List<BottonRoute> bottomBarRoutes = [
    BottonRoute(icon: Icons.home_outlined, label: "Home", isActive: true, routePage: const HomePage()),
    BottonRoute(icon: Icons.explore_outlined, label: "Explore", isActive: false, routePage: const ExplorePage()),
    BottonRoute(icon: CupertinoIcons.conversation_bubble, label: "Chats", isActive: false, routePage: const ChatsPage()),
    BottonRoute(icon: Icons.settings_outlined, label: "Settings", isActive: false, routePage: const SettingsPage()),
  ];

  onClickRoute(int routeId){
    for (var element in bottomBarRoutes) {
      element.isActive = false;
    }
    bottomBarRoutes[routeId].isActive = true;
    currantIndexPage = routeId;
    update();
  }
}