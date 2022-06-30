import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/homepage/My/logout/logout.controller.dart';
import 'package:get/get.dart';

class LogoutView extends GetView<LogoutController> {
  const LogoutView({Key? key}) : super(key: key);
  get top => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: SingleChildScrollView(
                    child: Column(children: <Widget>[
      ElevatedButton(
        child: const Text('Logout'),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Attention'),
                  content: const Text('Vous êtes sûr？'),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('Annuler'),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: const Text('Confirmer'),
                      onPressed: () {
                        controller.navigateToSignIn();
                      },
                    ),
                  ],
                );
              });
        },
      )
    ])))));
  }
}
