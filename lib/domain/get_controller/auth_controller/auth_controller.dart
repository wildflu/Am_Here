import 'dart:convert';

import 'package:amhere/data/user.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthController extends GetxController {
  Position? location;
  
  getTheLocation()async {
    bool serviceEnabled;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }
    
    location = await Geolocator.getCurrentPosition();
  }
}
