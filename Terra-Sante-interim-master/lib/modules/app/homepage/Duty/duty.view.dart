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
        appBar: AppBar(
          title: const Text('Mission'),
          backgroundColor: Colors.blue,
          leading: const BackButton(color: Colors.black),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(children: [
            const Text(
              "Histoire",
              textAlign: TextAlign.start,
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.lock_clock),
                    title: Text('Mes missions'),
                    subtitle: Text(
                        'Pharmacie Casino, 18 rue paul langevin, val de fontenay, 94120'),
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
            SizedBox(height: size.height * 0.03),
            const Text(
              "Mission à accomplir",
              textAlign: TextAlign.start,
            ),
            Card(
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
            SizedBox(height: size.height * 0.03),
            const Text(
              "Mission peut choisir",
              textAlign: TextAlign.start,
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Les missions peuvent choisir'),
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
          ]),
        )));
  }
}
