

import 'package:get/get.dart';

class SettingsController extends GetxController {
  bool isExceptMessages  = false;
  bool isEnableLocationOnMap  = false;

  exceptMessagesChangeSatus(bool status) {
    isExceptMessages = status;
    update();
  }
  enableLocationChangeSatus(bool status) {
    isEnableLocationOnMap = status;
    update();
  }
}