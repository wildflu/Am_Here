
import 'package:amhere/domain/get_controller/themes/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  
  static ThemeData currantTheme = Themes.custumLight;
  
  double left = 4;
  double right = 52;

  chaingeTheme(){
    if(left == 4){
      left = 52;
      right = 4;
      // currantTheme = Themes.custumDark;
      Get.changeTheme(Themes.custumDark);
      Get.changeThemeMode(ThemeMode.dark);
    }else {
      left = 4;
      right = 52;
    }
    update();
  }

}