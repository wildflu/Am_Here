

import 'package:amhere/presontation/views/pages/app_page.dart';
import 'package:amhere/presontation/views/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashMoveController extends GetxController{

  List<Color> splashes = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.amber,
  ];
  int currantIndex = 0;

  nextSplash() {
    if(currantIndex<splashes.length -1){
      currantIndex ++;
    }else{
      Get.off(()=> const AppPage());
    }
    update();
  }
}