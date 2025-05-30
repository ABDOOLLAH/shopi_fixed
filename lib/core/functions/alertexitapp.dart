import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() async {
  final completer = Completer<bool>();

  Get.defaultDialog(
    title: "تنبيه",
    middleText: "هل تريد الخروج من التطبيق؟",
    actions: [
      ElevatedButton(
        onPressed: () {
          completer.complete(true);
          Get.back();
        },
        child: const Text("نعم"),
      ),
      ElevatedButton(
        onPressed: () {
          completer.complete(false);
          Get.back();
        },
        child: const Text("لا"),
      ),
    ],
  );

  return completer.future;
}
