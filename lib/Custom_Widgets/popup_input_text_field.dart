import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_modules.dart';

getPopUpInputTextDialog(BuildContext context, String title,
    TextEditingController controller, Function() onPressed) {
  return Get.defaultDialog(
      title: title,
      titleStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: appColor,
      ),
      backgroundColor: const Color.fromARGB(255, 183, 199, 214),
      radius: 5,
      content: TextFormField(
        controller: controller,
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.add_comment_outlined,
            color: appColor,
          ),
          labelText: "Add Here",
          labelStyle: TextStyle(fontSize: 13),
        ),
        // keyboardType: TextInputType.number,
        textAlign: TextAlign.start,
      ),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'EXIT (X)',
              style: TextStyle(
                  color: Color.fromARGB(255, 185, 30, 19),
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            )),
        const SizedBox(
          width: 30,
        ),
        TextButton(
            onPressed: onPressed,
            child: const Text(
              'SUBMIT (✓)',
              style: TextStyle(
                  color: Color.fromARGB(255, 25, 165, 30),
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ))
      ]);
}

getPopUpInputTextFieldMessage(BuildContext context, String title,
    TextEditingController controller, Function() onPressed) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: TextFormField(
        controller: controller,
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.add_comment_outlined,
            color: appColor,
          ),
          labelText: "Add Here",
          labelStyle: TextStyle(fontSize: 13),
        ),
        textAlign: TextAlign.start,
      ),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'EXIT (X)',
              style: TextStyle(
                  color: Color.fromARGB(255, 185, 30, 19),
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            )),
        const SizedBox(
          width: 30,
        ),
        TextButton(
            onPressed: onPressed,
            child: const Text(
              'SUBMIT (✓)',
              style: TextStyle(
                  color: Color.fromARGB(255, 25, 165, 30),
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ))
      ],
    ),
  );
}
