import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/homepage/Calendar/calendar.controller.dart';
import 'package:flutter_application_1/shared/widgets/button/rounded_button.dart';
import 'package:flutter_application_1/shared/widgets/drawer/navigation_drawer.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CalendarView extends GetView<CalendarController> {
  const CalendarView({Key? key}) : super(key: key);
  get top => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        drawer: NavigationDrawer(),
        appBar: AppBar(
          title: const Text("Calendar"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              const Text(
                "Vous pouvez choisir plusieurs temps qui vous conviennent..",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Obx(
                () => Text(
                  DateFormat("EEE, dd-MM-yyyy")
                      .format(controller.selectedDate.value)
                      .toString(),
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Obx(
                      () => ListTile(
                        leading: const Icon(Icons.work),
                        title: const Text("Choisiez votre temps libres"),
                        subtitle: Text(controller.chosenDate0.value +
                            ' - ' +
                            controller.chosenTime0.value),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('Début'),
                          onPressed: () {
                            controller.chooseTime();
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('Fin'),
                          onPressed: () {
                            controller.chooseTime();
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Obx(
                      () => ListTile(
                        leading: const Icon(Icons.work),
                        title: const Text("Choisiez votre temps libres"),
                        subtitle: Text(controller.chosenDate1.value +
                            ' - ' +
                            controller.chosenTime1.value),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('Début'),
                          onPressed: () {
                            controller.chooseTime();
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('Fin'),
                          onPressed: () {
                            Obx() {
                              controller.chooseTime();
                            }
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Obx(
                      () => ListTile(
                        leading: const Icon(Icons.work),
                        title: const Text("Choisiez votre temps libres"),
                        subtitle: Text(controller.chosenDate2.value +
                            ' - ' +
                            controller.chosenTime2.value),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('Début'),
                          onPressed: () {
                            controller.chooseTime();
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('Fin'),
                          onPressed: () {
                            controller.chooseTime();
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Obx(
                      () => ListTile(
                        leading: const Icon(Icons.work),
                        title: const Text("Choisiez votre temps libres"),
                        subtitle: Text(controller.chosenDate3.value +
                            ' - ' +
                            controller.chosenTime3.value),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('Début'),
                          onPressed: () {
                            controller.chooseTime();
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('Fin'),
                          onPressed: () {
                            controller.chooseTime();
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    )
                  ],
                ),
              ),
              RoundedButton(
                  text: "Enregistrez",
                  onTap: () => controller.navigateToHomePage()),
            ],
          )),
        ));
  }
}
