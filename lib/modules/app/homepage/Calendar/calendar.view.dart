import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/homepage/Calendar/calendar.controller.dart';
import 'package:flutter_application_1/shared/utils/theme.utils.dart';
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
              const Text(
                  "Vous pouvez choisir plusieurs temps qui vous conviennet.."),
              Obx(
                () => Text(
                  DateFormat("EEE, dd-MM-yyyy")
                      .format(controller.selectedDate.value)
                      .toString(),
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyles.elevatedButtonStyle,
                    onPressed: () {
                      controller.chooseTime();
                    },
                    child: const Text('    1er temps de début   '),
                  ),
                  ElevatedButton(
                    style: ButtonStyles.elevatedButtonStyle,
                    onPressed: () {
                      controller.chooseTime();
                    },
                    child: const Text('     1er temps de fin    '),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyles.elevatedButtonStyle,
                    onPressed: () {
                      controller.chooseTime();
                    },
                    child: const Text('2 ième temps de début'),
                  ),
                  ElevatedButton(
                    style: ButtonStyles.elevatedButtonStyle,
                    onPressed: () {
                      controller.chooseTime();
                    },
                    child: const Text(' 2 ième temps de fin  '),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyles.elevatedButtonStyle,
                    onPressed: () {
                      controller.chooseTime();
                    },
                    child: const Text('3 ième temps de début'),
                  ),
                  ElevatedButton(
                    style: ButtonStyles.elevatedButtonStyle,
                    onPressed: () {
                      controller.chooseTime();
                    },
                    child: const Text(' 3 ième temps de fin  '),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyles.elevatedButtonStyle,
                    onPressed: () {
                      controller.chooseTime();
                    },
                    child: const Text('4 ième temps de début'),
                  ),
                  ElevatedButton(
                    style: ButtonStyles.elevatedButtonStyle,
                    onPressed: () {
                      controller.chooseTime();
                    },
                    child: const Text(' 4 ième temps de fin  '),
                  ),
                ],
              ),
              RoundedButton(
                  text: "Enregistrez",
                  onTap: () => controller.navigateToHomePage()),
            ],
          )),
        ));
  }
}
