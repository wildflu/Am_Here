
import 'package:amhere/services/login_user.dart';

class User {
  String userName;
  String email;
  String password;
  int age;
  String city;
  String country;
  String gender;
  int lant;
  int lang;
  User({
    required this.userName,
    required this.email,
    required this.password,
    required this.age,
    required this.city,
    required this.country,
    required this.gender,
    required this.lant,
    required this.lang,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userName: json['username'],
      email : json['email'],
      password: json['password'],
      age : json['age'],
      city : json['city'] ,
      country:  json['country'] ,
      gender:  json['gender'] ,
      lang: json['lant'],
      lant: json['lang'],
    );
  }

  bool isLoginUser() {
    return loginUser!.email == email && loginUser!.userName == userName;
  }

}
