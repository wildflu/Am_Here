

import 'dart:convert';

import 'package:amhere/data/user.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthRepository extends GetxController {
  final String url = 'http://192.168.43.233/api/register';

  Future<bool> registerUser(User user) async {
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "username": user.userName,
          "email": user.email,
          "password": user.password,
          "age": user.age,
          "city": user.city,
          "country": user.country,
          "gender": user.gender,
          "latitude": user.lant,
          "longitude": user.lang
        }),
      );
      if (response.statusCode == 201) {
        return true;
      } else {
        print('Registration failed - ${response.statusCode}: ${response.body}');
        return false;
      }
    } catch (error) {
      print('Error during registration: $error');
      return false;
    }
  }
}