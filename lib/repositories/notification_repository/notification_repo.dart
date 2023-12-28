


import 'package:amhere/data/notification.dart';

class NotificationRepository {

  Future<List<Notif>> getNotifications() async {
    return [
      Notif(title: "Ask For Contact", content: "this person is ask you for contact in the app", timeRecived: DateTime.now(), isReaded: false),
      Notif(title: "New message", content: "you have new message you have", timeRecived: DateTime.now(), isReaded: false),
      Notif(title: "Discaver services", content: "we have new feature descaver it now", timeRecived: DateTime.now(), isReaded: false),
      Notif(title: "Get premium", content: "get premuim account for more feature try it 3 days for free", timeRecived: DateTime.now(), isReaded: false),
      Notif(title: "Invit", content: "your have new friend invitation", timeRecived: DateTime.now(), isReaded: false),
      Notif(title: "Friend request", content: "a friend seed you a request", timeRecived: DateTime.now(), isReaded: false),
      Notif(title: "New message", content: "you have a new mwssage not readed", timeRecived: DateTime.now(), isReaded: false),
    ];
  }


}