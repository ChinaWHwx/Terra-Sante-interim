import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/homepage/Duty/duty.controller.dart';
import 'package:get/get.dart';

class DutyView extends GetView<DutyController> {
  const DutyView({Key? key}) : super(key: key);
  get top => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.work),
                title: Text('Mes missions'),
                subtitle: Text(
                    'Pharmacie Auchan, 18 rue paul langevin, val de fontenay, 94120'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: const Text('Voir les details'),
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: () {},
                    child: const Text('supprimmer'),
                  ),
                  const SizedBox(width: 8),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
