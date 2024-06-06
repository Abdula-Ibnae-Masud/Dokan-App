import 'package:flutter/material.dart';
import 'package:get/get.dart';

/* Widget phoneSystemBackButton(Widget goToPage, Widget childWidget) {
  return WillPopScope(
    onWillPop: () async {
      Get.to(goToPage);
      return true;
    },
    child: childWidget,
  );
} */

Widget phoneSystemBackButton(Widget goToPage, Widget childWidget) {
  return PopScope(
    canPop: false,
    onPopInvoked: (didPop) async {
     return Get.to(goToPage);
    },
    child: childWidget,
  );
}