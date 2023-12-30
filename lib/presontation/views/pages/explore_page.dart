


import 'package:amhere/domain/get_controller/mop_controllers/map_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MapRepository>(
      init:MapRepository(),
      builder: (controller) {
        return GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: const CameraPosition(target: LatLng(888, 776)),
          onMapCreated: (GoogleMapController cont) {
            controller.completController.complete(cont);
          },
          onLongPress: (argument) {},
          markers: controller.markers,
        );
      },
    );
  }
}
