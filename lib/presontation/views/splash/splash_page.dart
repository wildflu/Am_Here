

import 'package:amhere/domain/get_controller/domain/splash_move_controller.dart';
import 'package:amhere/presontation/components/widgets/notifier_dot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GetBuilder<SplashMoveController>(
        init: SplashMoveController(),
        builder: (controller) {
          return Stack(
        children: [
          Positioned(
            bottom: 40,
            right: 20,
            left: 20,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 8,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.splashes.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: NotifierContainerComponent(color: controller.currantIndex == index ? controller.splashes[index]:Colors.black12),
                      ),
                    ),
                  ).animate().fade(),
                ),
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.black12,
                    padding: const EdgeInsets.all(10)
                  ),
                  onPressed: ()=> controller.nextSplash(), 
                  icon: const Icon(Icons.navigate_next_outlined)
                )
              ],
            ),
          ),
        ],
      );
        },
      )
    );
  }
}