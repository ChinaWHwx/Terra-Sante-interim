import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Position/google_place_api.controller.dart';
import 'package:flutter_application_1/shared/widgets/button/rounded_button.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';

class GooglePlaceApiView extends GetView<GooglePlaceApiController> {
  const GooglePlaceApiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Google Search Places Api',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: [
            TextFormField(
              controller: controller.controller,
              decoration:
                  const InputDecoration(hintText: 'Search places with name'),
            ),
            Expanded(
                child: controller.obx((state) => ListView.builder(
                    itemCount: controller.placesList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () async {
                          controller.controller.text =
                              controller.placesList[index]['description'];
                          List<Location> locations = await locationFromAddress(
                              controller.placesList[index]['description']);
                          //print(locations.last.longitude);
                          //print(locations.last.latitude);
                        },
                        title:
                            Text(controller.placesList[index]['description']),
                      );
                    }))),
            RoundedButton(
              text: "rengistrer",
              onTap: () => controller.navigateToInfos(),
            ),
          ],
        ),
      ),
    );
  }
}
