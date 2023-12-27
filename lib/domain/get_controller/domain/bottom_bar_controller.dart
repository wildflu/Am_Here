

import 'package:amhere/domain/get_controller/models/BottonRoute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarController extends GetxController {

  List<BottonRoute> bottomBarRoutes = [
    BottonRoute(icon: Icons.home_outlined, label: "Home", isActive: true,),
    BottonRoute(icon: Icons.explore_outlined, label: "Explore", isActive: false),
    BottonRoute(icon: Icons.manage_accounts_outlined, label: "Manage", isActive: false),
    BottonRoute(icon: Icons.settings_outlined, label: "Settings", isActive: false),
  ];

  onClickRoute(int routeId){
    for (var element in bottomBarRoutes) {
      element.isActive = false;
    }
    bottomBarRoutes[routeId].isActive = true;
    update();
  }
}