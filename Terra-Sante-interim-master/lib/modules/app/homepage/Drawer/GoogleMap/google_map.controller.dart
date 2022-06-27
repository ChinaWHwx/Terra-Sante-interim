import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController extends GetxController with StateMixin {
  @override
  void onInit() {
    change(null, status: RxStatus.loading());
    super.onInit();
    setMarkedIcon();
    setCircles();
    change(null, status: RxStatus.success());
  }

  late BitmapDescriptor markerIcon;

  final CameraPosition initialPosition =
      const CameraPosition(target: LatLng(48.8622944, 2.4136968), zoom: 12);
  final Rx<Set<Marker>> markers = HashSet<Marker>().obs;
  final Rx<Set<Circle>> circles = HashSet<Circle>().obs;
  late GoogleMapController mapController;

  onMapCreated(GoogleMapController gmController) {
    change(null, status: RxStatus.loading());
    mapController = gmController;
    markers.value.add(
      const Marker(
        markerId: MarkerId("0"),
        position: LatLng(48.8622944, 2.4136968),
        infoWindow: InfoWindow(
          title: "Terra Santé",
          snippet: "interim plateforme",
        ),
      ),
    );
    change(null, status: RxStatus.success());
  }

  void setMarkedIcon() async {
    markerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'assets/icons/user.jpg');
  }

  void setCircles() {
    circles.value.add(const Circle(
        circleId: CircleId("0"),
        center: LatLng(48.8622944, 2.4136968),
        radius: 1000,
        strokeWidth: 2,
        fillColor: Color.fromRGBO(102, 51, 153, .2)));
  }
}
