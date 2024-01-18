

import 'package:amhere/domain/get_controller/themes/theme_controller.dart';
import 'package:amhere/presontation/views/splash/splash_page.dart';
import 'package:amhere/services/login_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initial();
  runApp(GetMaterialApp(
    home:const MyApp(),
    title: 'App',
    theme: ThemeController.currantTheme,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // Permisstion permitionController = Get.put(Permisstion());
    return const SplashPage();
  }
}

Future initial() async {
  await Get.putAsync(() => MyServices().intialservices());
}