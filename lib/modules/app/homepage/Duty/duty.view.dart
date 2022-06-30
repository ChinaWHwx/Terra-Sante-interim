import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/homepage/Duty/duty.controller.dart';
import 'package:fsuper/fsuper.dart';
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
          child: Column(children: [
            const Text(
              "Histoire",
              textAlign: TextAlign.start,
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Badge(
                      badgeContent: Text(
                        controller.recent.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                      child: const Icon(Icons.lock_clock),
                      badgeColor: Colors.red,
                      toAnimate: false,
                      showBadge: controller.recent > 0 ? true : false,
                    ),
                    title: const Text('Mes missions avant'),
                    subtitle: const Text(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  ListTile(
                    leading: Badge(
                      badgeContent: Text(
                        controller.now.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                      child: const Icon(Icons.work),
                      badgeColor: Colors.red,
                      toAnimate: false,
                      showBadge: controller.now > 0 ? true : false,
                    ),
                    title: const Text('Mes missions maintenant'),
                    subtitle: const Text(
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
            /*
            FSuper(
              redPointOffset: const Offset(185, -10),
              backgroundColor: const Color(0xffeeeeee),
              corner: FCorner.all(6),
              redPoint: true,
            ),
            */
            const Text(
              "Mission peut choisir",
              textAlign: TextAlign.start,
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Badge(
                      badgeContent: Text(
                        controller.future.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                      child: const Icon(Icons.check),
                      badgeColor: Colors.red,
                      toAnimate: false,
                      showBadge: controller.future > 0 ? true : false,
                    ),
                    title: const Text('Les missions peuvent choisir'),
                    subtitle: const Text(
                        'Pharmacie Auchan, 18 rue paul langevin, val de fontenay, 94120'),
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
