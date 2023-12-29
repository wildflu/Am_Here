import 'package:amhere/data/user.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';

User? loginUser;

class MyServices extends GetxService {
  Future<MyServices> intialservices() async {
    loginUser = User(
        userName: "walid",
        email: "walid@gmail.com",
        password: "123",
        age: 12,
        city: "safi",
        country: "morroco",
        gender: "male",
        lant: 123,
        lang: 123);
    return this;
  }
}
