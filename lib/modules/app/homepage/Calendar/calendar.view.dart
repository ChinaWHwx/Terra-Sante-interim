import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/homepage/Calendar/calendar.controller.dart';
import 'package:flutter_application_1/shared/widgets/button/rounded_button.dart';
import 'package:flutter_application_1/shared/widgets/drawer/navigation_drawer.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CalendarView extends GetView<CalendarController> {
  final calendarController1 = CalendarController();
  final calendarController2 = CalendarController();
  final calendarController3 = CalendarController();
  final CalendarController4 = CalendarController();

  CalendarView({Key? key}) : super(key: key);
  get top => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        drawer: const NavigationDrawer(),
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
                        subtitle: Text(calendarController1.chosenDate.value +
                            ' - ' +
                            calendarController1.chosenTime.value),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('Début'),
                          onPressed: () {
                            calendarController1.chooseTime();
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('Fin'),
                          onPressed: () {
                            calendarController1.chooseTime();
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
                        subtitle: Text(calendarController2.chosenDate.value +
                            ' - ' +
                            calendarController2.chosenTime.value),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('Début'),
                          onPressed: () {
                            calendarController2.chooseTime();
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('Fin'),
                          onPressed: () {
                            Obx() {
                              calendarController2.chooseTime();
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
                        subtitle: Text(calendarController3.chosenDate.value +
                            ' - ' +
                            calendarController3.chosenTime.value),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('Début'),
                          onPressed: () {
                            calendarController3.chooseTime();
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('Fin'),
                          onPressed: () {
                            calendarController3.chooseTime();
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
                        subtitle: Text(CalendarController4.chosenDate.value +
                            ' - ' +
                            CalendarController4.chosenTime.value),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('Début'),
                          onPressed: () {
                            CalendarController4.chooseTime();
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('Fin'),
                          onPressed: () {
                            Obx() {
                              CalendarController4.chooseTime();
                            }
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
