


import 'package:amhere/domain/get_controller/domain/bottom_bar_controller.dart';
import 'package:amhere/presontation/views/pages/notification_page.dart';
import 'package:get/get.dart';

class NavBarController extends GetxController {
  BottomBarController bottomBarController = Get.find();
  notificationClicked() {
    Get.to(()=> const NotificationPage());
  }

  chatsClicked(){
    bottomBarController.onClickRoute(2);
  }

}