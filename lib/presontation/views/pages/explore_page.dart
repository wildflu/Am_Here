


import 'package:amhere/domain/get_controller/mop_controllers/map_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    // MapRepository mapRepository = Get.put(MapRepository());
    // return Container(
    //   padding: const EdgeInsets.all(0),
    //   child: GoogleMap(
    //     mapType: MapType.normal,
    //     initialCameraPosition: const CameraPosition(
    //       target: LatLng(32.29856601710241, -9.235128611326218),
    //       zoom: 14
    //     ),
    //     onMapCreated: (GoogleMapController controller) {
    //       mapRepository.controller.complete(controller);
    //     },
    //     onTap: (argument) {
    //       // print(argument);
    //     },
    //     markers: mapRepository.markers,
    //   ),
    // );
    return Center(child: Text("Explore Page"),);
  }
}
