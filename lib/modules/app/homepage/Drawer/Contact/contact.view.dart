import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/homepage/Drawer/Contact/contact.controller.dart';
import 'package:get/get.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class ContactView extends GetView<ContactController> {
  const ContactView({Key? key}) : super(key: key);
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
              Image.asset(
                "assets/images/logo.png",
                height: size.height * 0.35,
              ),
              const Text(
                "Si vous voulez, vous purriez nous contacter directement",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              const SizedBox(
                height: 80,
                width: 80,
              ),
              ConstrainedBox(
                  constraints: const BoxConstraints.tightFor(width: 200),
                  child: ElevatedButton(
                    child: const Text('Call'),
                    onPressed: () {
                      //launch('tel:0749660950');
                      FlutterPhoneDirectCaller.callNumber("0749660950");
                    },
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}
