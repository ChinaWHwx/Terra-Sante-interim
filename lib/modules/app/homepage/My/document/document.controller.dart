import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DocumentController extends GetxController {
  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;

  navigateToWelcome() {
    Get.toNamed(Routes.welcomeRoute);
  }

  void getImage(ImageSource imageSource) async {
    final PickedFile = await ImagePicker().getImage(source: imageSource);
    if (PickedFile != null) {
      selectedImagePath.value = PickedFile.path;
      selectedImageSize.value =
          ((File(selectedImagePath.value)).lengthSync() / 1024 / 1024)
                  .toStringAsFixed(2) +
              "MB";
    } else {
      Get.snackbar('Error', 'No image selected',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
  }
}
