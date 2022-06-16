import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/auth/Splash/splach.controller.dart';
import 'package:get/get.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const Text('Bienvenue à Terra santé'),
            Center(
              child: Image.asset('assets/images/logo.png'),
            ),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
