import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/homepage/Drawer/Settings/setting.controller.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({Key? key}) : super(key: key);
  get top => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              QrImage(
                data: "Partagez avec vos amis",
                version: QrVersions.auto,
                size: 320,
                gapless: false,
              ),
              const SizedBox(
                height: 20,
                width: 100,
              ),
              QrImage(
                data: "Partagez avec vos amis",
                version: QrVersions.auto,
                size: 320,
                gapless: false,
                embeddedImage: const AssetImage('assets/images/logo.png'),
                embeddedImageStyle: QrEmbeddedImageStyle(
                  size: const Size(120, 120),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
