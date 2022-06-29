import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/homepage/Drawer/GoogleMap/google_map.controller.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapView extends GetView<MapController> {
  const GoogleMapView({Key? key}) : super(key: key);
  get top => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Google Map'),
      ),
      body: controller.obx(
        (state) => Stack(
          children: <Widget>[
            Obx((() => GoogleMap(
                  onMapCreated: controller.onMapCreated,
                  initialCameraPosition: controller.initialPosition,
                  mapType: MapType.normal,
                  markers: controller.markers.value,
                  circles: controller.circles.value,
                  myLocationEnabled: true,
                  myLocationButtonEnabled: true,
                ))),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 32),
              child: const Text("Terra Santé"),
            )
          ],
        ),
      ),
    ));
  }
}
