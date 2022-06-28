import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/modules/app/homepage/My/profile/profile.service.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  final ProfileController profilerController = Get.put(ProfileController());

  var isLoading = false.obs;
  var imageURL = '';

  void uploadImage(ImageSource imageSource) async {
    try {
      final pickedFile = await ImagePicker().getImage(source: imageSource);
      isLoading(true);
      if (pickedFile != null) {
        var response = await ImageService.uploadFile(pickedFile.path);

        if (response.statusCode == 200) {
          //get image url from api response
          imageURL = response.data['user']['image'];

          Get.snackbar('Success', 'Image uploaded successfully',
              margin: const EdgeInsets.only(top: 5, left: 10, right: 10));
        } else if (response.statusCode == 401) {
          Get.offAllNamed('/sign_up');
        } else {
          Get.snackbar('Failed', 'Error Code: ${response.statusCode}',
              margin: const EdgeInsets.only(top: 5, left: 10, right: 10));
        }
      } else {
        Get.snackbar('Failed', 'Image not selected',
            margin: const EdgeInsets.only(top: 5, left: 10, right: 10));
      }
    } finally {
      isLoading(false);
    }
  }
}
