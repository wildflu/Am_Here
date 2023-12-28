
import 'package:amhere/data/notification.dart';
import 'package:amhere/repositories/notification_repository/notification_repo.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  List<Notif>? notifications = [];
  NotificationRepository notificationRepository = NotificationRepository();

  allNotification() async {
    notifications = await notificationRepository.getNotifications();
    update();
  }

  clearAllNotifications() {
    for(var notification in notifications!) {
      notification.isReaded = true;
    }
    update();
  }

  readNotification(Notif notification) {
    notification.isReaded = true;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    allNotification();
  }

}