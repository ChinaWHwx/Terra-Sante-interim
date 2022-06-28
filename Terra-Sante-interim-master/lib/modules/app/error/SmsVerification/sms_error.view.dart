import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/error/SmsVerification/sms_error.controller.dart';
import 'package:get/get.dart';

class SmsErrorView extends GetView<SmsErrorController> {
  const SmsErrorView({Key? key}) : super(key: key);
  get top => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: SingleChildScrollView(
              child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center, children: []),
          )),
        ));
  }
}
