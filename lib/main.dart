

import 'package:amhere/presontation/views/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const GetMaterialApp(
    home: MyApp(),
    title: 'App',
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // Permisstion permitionController = Get.put(Permisstion());
    return const HomePage();
  }
}