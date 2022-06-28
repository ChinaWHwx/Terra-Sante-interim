import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CalendarController extends GetxController {
  var selectedDate = DateTime.now().obs;
  var selectedTime = TimeOfDay.now().obs;
  var chosenDate0 = ''.obs;
  var chosenTime0 = ''.obs;
  var chosenDate1 = ''.obs;
  var chosenTime1 = ''.obs;
  var chosenDate2 = ''.obs;
  var chosenTime2 = ''.obs;
  var chosenDate3 = ''.obs;
  var chosenTime3 = ''.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  chooseTime() async {
    DateTime? pickedDate = await showDatePicker(
        context: Get.context!,
        initialDate: selectedDate.value,
        firstDate: DateTime(2020),
        lastDate: DateTime(2050),
        //initialEntryMode: DatePickerEntryMode.input,
        //initialDatePickerMode: DatePickerMode.year,
        helpText: 'Choissiez votre temps',
        cancelText: 'Close',
        confirmText: 'Confirm',
        errorFormatText: "Enter valid date",
        errorInvalidText: 'Enter valid date range',
        fieldHintText: 'jj/mm/aaaa',
        selectableDayPredicate: disableDate);
    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
    }
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    chosenDate0(formatter.format(selectedDate.value));
    chosenDate1(formatter.format(selectedDate.value));
    chosenDate2(formatter.format(selectedDate.value));
    chosenDate3(formatter.format(selectedDate.value));

    TimeOfDay? pickedTime = await showTimePicker(
        context: Get.context!,
        initialTime: selectedTime.value,
        builder: (context, child) {
          return Theme(data: ThemeData.dark(), child: child!);
        },
        initialEntryMode: TimePickerEntryMode.input,
        helpText: 'select Depature Time',
        cancelText: 'close',
        confirmText: 'Confirm',
        errorInvalidText: 'Provide valid time',
        hourLabelText: 'Select Hour',
        minuteLabelText: 'Select Minute');
    if (pickedTime != null && pickedTime != selectedTime.value) {
      selectedTime.value = pickedTime;
    }
    chosenTime0(selectedTime.value.hour.toString() +
        'h' +
        selectedTime.value.minute.toString());
    chosenTime1(selectedTime.value.hour.toString() +
        'h' +
        selectedTime.value.minute.toString());
    chosenTime2(selectedTime.value.hour.toString() +
        'h' +
        selectedTime.value.minute.toString());
    chosenTime3(selectedTime.value.hour.toString() +
        'h' +
        selectedTime.value.minute.toString());
  }

  navigateToHomePage() {
    Get.toNamed(Routes.homepageRoute);
  }

  bool disableDate(DateTime day) {
    if ((day.isAfter(DateTime.now().subtract(const Duration(days: 1))) &&
        day.isBefore(DateTime.now().add(const Duration(days: 7))))) {
      return true;
    } else {
      return false;
    }
  }
}
