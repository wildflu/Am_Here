



import 'package:amhere/domain/get_controller/domain/bottom_bar_controller.dart';
import 'package:amhere/presontation/components/widgets/buttom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GetBuilder<BottomBarController>(
            init: BottomBarController(),
            builder: (controller) => controller.bottomBarRoutes[controller.currantIndexPage].routePage,
          ),
          const ButtomBar()
        ],
      ),
    );
  }
}
