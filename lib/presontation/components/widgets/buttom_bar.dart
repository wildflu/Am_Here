


import 'package:amhere/domain/get_controller/domain/bottom_bar_controller.dart';
import 'package:amhere/presontation/views/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';


BottomBarController btmController = Get.put(BottomBarController());


class ButtomBar extends StatelessWidget {
  const ButtomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarController>(
      init: BottomBarController(),
      builder: (controller) {
        return Positioned(
        right: 0,
        left: 0,
        bottom: 0,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          height: 90,
          child: Stack(
            children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  top: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 10, offset: Offset(1, 1), color: Colors.black12)
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ButtonBarBotton(
                                  icon: controller.bottomBarRoutes[0].icon, 
                                  label: controller.bottomBarRoutes[0].label, 
                                  isActive: controller.bottomBarRoutes[0].isActive,
                                  routeId: 0,
                                ),
                                ButtonBarBotton(
                                  icon: controller.bottomBarRoutes[1].icon, 
                                  label: controller.bottomBarRoutes[1].label, 
                                  isActive: controller.bottomBarRoutes[1].isActive,
                                  routeId: 1,
                                ),
                              ],
                            ),
                          ),
                          Expanded(flex: 1,child: Container()),
                          Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ButtonBarBotton(
                                  icon: controller.bottomBarRoutes[2].icon, 
                                  label: controller.bottomBarRoutes[2].label, 
                                  isActive: controller.bottomBarRoutes[2].isActive,
                                  routeId: 2,
                                ),
                                ButtonBarBotton(
                                  icon: controller.bottomBarRoutes[3].icon, 
                                  label: controller.bottomBarRoutes[3].label, 
                                  isActive: controller.bottomBarRoutes[3].isActive,
                                  routeId: 3,
                                ),
                              ],
                            ),
                          ),
                        ],
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 0,
                  left: 0,
                  child: Center(
                    child: GestureDetector(
                      onTap: ()=>Get.to(()=> const ProfilePage()),
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(40), border: Border.all(width: 3, color: Colors.blueAccent)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset('assets/profile.png', fit: BoxFit.contain,),
                        ),
                      ),
                    )
                  ),
                )
            ],
          ),
        ),
      ).animate().moveY(begin: 100, end: 0);
      },
    );
  }
}

class ButtonBarBotton extends StatelessWidget {
  const ButtonBarBotton({
    super.key, required this.icon, required this.label, required this.isActive, required this.routeId,
  });
  final IconData icon;
  final String label;
  final bool isActive;
  final int routeId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> btmController.onClickRoute(routeId),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: isActive? Colors.black: Colors.black26,),
          Text(label, style: TextStyle(color: isActive? Colors.black: Colors.black26, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}