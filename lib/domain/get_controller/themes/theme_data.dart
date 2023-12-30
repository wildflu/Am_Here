import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Themes extends GetxController{

  static ThemeData custumDark = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      foregroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: 70,
    ),
    scaffoldBackgroundColor: Colors.black12,
    primaryColor: Colors.black,
  );

  static ThemeData custumLight = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
      toolbarHeight: 70,
    ),
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      titleSmall: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.black26),
      bodyLarge: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.black12),
    ),
    primaryColor: Colors.black,
    shadowColor: Colors.black12,
    unselectedWidgetColor: Colors.black26
  );
  
}