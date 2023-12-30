

import 'dart:async';

import 'package:amhere/domain/get_controller/app_controller/app_page_controller.dart';
import 'package:amhere/presontation/components/widgets/show_authers_profile_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapRepository extends GetxController {
  final Completer completController = Completer();
  AppPageController appPageController = AppPageController();

  List<LatLng> lanlants = [
    const LatLng(32.29175309411939, -9.236223958432674),
    const LatLng(32.29856601710241, -9.235128611326218)
  ];
  List<String> assets = [
    'assets/one.jpg',
    'assets/two.jpg'
  ];

  BitmapDescriptor ?bit1;
  BitmapDescriptor ?bit2;

  getBitMap() {
    BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, 'assets/placeholder_image.png').then((value) => bit1 = value);
    BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, 'assets/placeholder_image.png').then((value) => bit2 = value);
    update();
  }

  Set<Marker> markers = const <Marker>{};
  @override
  void onInit()async{
    super.onInit();
    await getBitMap();
    markers = lanlants.map((posi) {
      return Marker(
        markerId: MarkerId(posi.latitude.toString()),
        position: posi,
        icon: BitmapDescriptor.defaultMarker,
        onTap: ()=> markerClicked()
      );
    }).toSet();
    update();
  }

  @override
  void onClose() {
    super.onClose();
  }

  markerClicked()=> Get.bottomSheet(const ShowAuthersProfileCard());


}