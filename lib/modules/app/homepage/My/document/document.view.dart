import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/homepage/My/document/document.controller.dart';
import 'package:flutter_application_1/shared/widgets/drawer/navigation_drawer.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class DocumentView extends GetView<DocumentController> {
  const DocumentView({Key? key}) : super(key: key);
  get top => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        drawer: NavigationDrawer(),
        appBar: AppBar(
          title: const Text("Mes documents"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: SingleChildScrollView(
              child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Obx(() => controller.selectedImagePath == ''
                  ? const Text(
                      'Select image from camera/galley',
                      style: TextStyle(fontSize: 20),
                    )
                  : Image.file(File(controller.selectedImagePath.value))),
              const SizedBox(
                height: 10,
              ),
              Obx(
                () => Text(
                  controller.selectedImageSize.value,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.getImage(ImageSource.camera);
                },
                child: const Text("Camera"),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.getImage(ImageSource.gallery);
                },
                child: const Text("Gallery"),
              ),
            ]),
          )),
        ));
  }
}
