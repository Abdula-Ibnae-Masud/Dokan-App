import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_modules.dart';

getSnackBarAlart(String title, String detailMessage) {
  return Get.snackbar(
    title, detailMessage,
    snackPosition: SnackPosition.TOP,
    colorText: Colors.white,
    backgroundColor: Colors.black54,
    borderRadius: 10,
    borderColor: Colors.red,
    borderWidth: 2,
    margin: const EdgeInsets.only(top: 100, left: 30, right: 30),
    // isDismissible: true,
    shouldIconPulse: true,
    icon: const Icon(
      Icons.error_outline_rounded,
      color: Colors.red,
    ),
    showProgressIndicator: true,
    progressIndicatorBackgroundColor: Colors.red,
    progressIndicatorValueColor: const AlwaysStoppedAnimation<Color>(appColor2),
    duration: const Duration(seconds: 3),
    // animationDuration: const Duration(milliseconds: 3000),
    forwardAnimationCurve: Curves.bounceInOut,
    /* backgroundGradient: LinearGradient(
        colors: [Colors.red, Colors.green],
      ) */
  );
}

showSnackBarAlart(String messageText) {
  return Get.showSnackbar(GetSnackBar(
    // title: "title",
    // message: messageText,
    icon: const Icon(Icons.error_outline_rounded, color: Colors.red),
    borderColor: appColor2,
    borderWidth: 2,
    maxWidth: 800,
    barBlur: 4,
    messageText: Center(
        child: Text(messageText,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold))),
    snackPosition: SnackPosition.BOTTOM,
    snackStyle: SnackStyle.FLOATING,
    margin: const EdgeInsets.fromLTRB(8, 0, 8, 8),
    padding: const EdgeInsets.all(8),
    backgroundColor: Colors.blueGrey.shade100,
    duration: const Duration(seconds: 2),
    borderRadius: 5,
  ));
}

showCustomizedSnackBar(BuildContext context, String messageText) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    padding: const EdgeInsets.all(8),
    elevation: 4,
    width: 800,
    // margin: const EdgeInsets.all(8),
    // showCloseIcon: true,
    // closeIconColor: Colors.red,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.black54,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5))),
    content: Center(
        child: Text(
      messageText,
      style: const TextStyle(
        fontSize: 14,
      ),
    )),
    action: SnackBarAction(
      label: 'Dismiss',
      disabledTextColor: Colors.white,
      textColor: Colors.red,
      onPressed: () {},
    ),
    duration: const Duration(seconds: 10),
  ));
}
