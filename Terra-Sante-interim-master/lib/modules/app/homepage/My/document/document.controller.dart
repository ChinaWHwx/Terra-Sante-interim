import 'package:file_picker/file_picker.dart';
import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DocumentController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;

  String image =
      'https://ouch-cdn2.icons8.com/84zU-uvFboh65geJMR5XIHCaNkx-BZ2TahEpE9TpVJM/rs:fit:784:784/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvODU5/L2E1MDk1MmUyLTg1/ZTMtNGU3OC1hYzlh/LWU2NDVmMWRiMjY0/OS5wbmc.png';
  late AnimationController loadingController;

  File? file;
  PlatformFile? platformFile;

  selectFile() async {
    var uploadedFile = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['png', 'jpg', 'jpeg', 'pdf']);

    if (uploadedFile != null) {
      file = File(uploadedFile.files.single.path!);
      platformFile = uploadedFile.files.first;
    }
    loadingController.forward();
  }

  @override
  void onInit() {
    loadingController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {});

    super.onInit();
  }

  navigateToWelcome() {
    Get.toNamed(Routes.welcomeRoute);
  }

  navigateToFiles() {}

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
