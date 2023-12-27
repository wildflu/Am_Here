import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';


class Permisstion extends GetxController{
  
  Future<void> requestLocationPermission() async {
    var status = await Permission.location.status;
    if (status != PermissionStatus.granted) {
      await Permission.location.request();
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    requestLocationPermission();
  }

}