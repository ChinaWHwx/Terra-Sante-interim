import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast(msg) {
  Fluttertoast.showToast(
    msg: msg,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 10,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
