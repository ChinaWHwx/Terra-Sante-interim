import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/error/access/File/file_access.controller.dart';
import 'package:get/get.dart';

class FileAccessView extends GetView<FileAccessController> {
  const FileAccessView({Key? key}) : super(key: key);
  get top => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/4_File Not.png",
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.14,
            left: MediaQuery.of(context).size.width * 0.065,
            child: FlatButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              onPressed: () {
                controller.navigateToSetting();
              },
              child: const Text("Settings"),
            ),
          )
        ],
      ),
    );
  }
}
