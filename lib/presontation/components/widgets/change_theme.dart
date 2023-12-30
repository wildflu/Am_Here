


import 'package:amhere/domain/get_controller/themes/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

class ChangeThemeComponent extends StatelessWidget {
  const ChangeThemeComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      init: ThemeController(),
      builder: (controller) {
        return GestureDetector(
          onTap: ()=> controller.chaingeTheme(),
          child: Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            // border: Border.all(width: 1, color: Colors.black),
            borderRadius: BorderRadius.circular(30)
          ),
          child: Stack(
            children: [
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.light_mode, size: 30,),
                    Icon(Icons.dark_mode, size: 30,),
                  ],
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                left: controller.left,
                top: 4,
                bottom: 4,
                right: controller.right,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(1, 1),
                        blurRadius: 5,
                        color: Theme.of(context).shadowColor
                      )
                    ]
                  ),
                ),
              )
            ],
          ),
          ).animate(),
        );
      },
    );
  }
}
