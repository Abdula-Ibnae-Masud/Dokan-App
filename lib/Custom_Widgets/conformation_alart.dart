import 'package:flutter/material.dart';
import 'package:get/get.dart';

confirmationStatus(BuildContext context /* , Function() onTap */) {
  return Get.dialog(
      barrierDismissible: false,
      Dialog(
        backgroundColor: Colors.transparent,
        elevation: 4,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image(
                    height: 110,
                    fit: BoxFit.fill,
                    image: AssetImage(
                        "assets/images/AlertImage.jpg")), // alert-icon.png
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
                child: Column(
                  children: [
                    const Text("Do you want to submit?",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24)),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                        "Are you sure about the changes? If not, then press the 'No (x)' button.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context, false);
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 4,
                            side:
                                const BorderSide(color: Colors.green, width: 2),
                            textStyle: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        child: const Text(
                          "Yes (✓)",
                          style: TextStyle(color: Colors.green),
                        )),
                    /* Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context, false);
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 4,
                                side: const BorderSide(color: Colors.red, width: 2),
                                textStyle: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                            child: const Text(
                              "No (x) ",
                              style: TextStyle(color: Colors.red),
                            )),
                        
                      ],
                    ), */
                  ],
                ),
              )
            ],
          ),
        ),
      ));
}

getConformationAlart(BuildContext context, Function() onTap) {
  return Get.defaultDialog(
    title: "Do you want to submit?",
    titleStyle: const TextStyle(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
    middleText:
        "Are you sure about the changes? If not, then press the 'No (x)' button.",
    middleTextStyle: const TextStyle(fontWeight: FontWeight.w500),
    // backgroundColor: const Color.fromARGB(255, 183, 199, 214),
    radius: 5,
    // content: Image(image: AssetImage("assets/images/alert-icon.png")),
    actions: [
      TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(
            "No (x)",
            style: TextStyle(
                color: Colors.red, fontSize: 24, fontWeight: FontWeight.bold),
          )),
      const SizedBox(
        width: 30,
      ),
      TextButton(
          onPressed: onTap,
          child: const Text("Yes (✓)",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                  fontWeight: FontWeight.bold))),
    ],
    /* textCancel: "NO (x)",
      cancelTextColor: Colors.red,
      onCancel: () {},
      buttonColor: Colors.blueGrey,
      textConfirm: "YES (✓)",
      confirmTextColor: Colors.green,
      onConfirm: onTap */
  );
}

getConformationMessage(BuildContext context, Function() onTap) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      elevation: 4,
      icon:
          const Icon(Icons.error_outline_outlined, size: 70, color: Colors.red),
      title: const Text("Are You Sure?"),
      titleTextStyle: const TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      content: const Text(
          "Are you sure about the changes? If not, then press the 'No (x)' button.",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w500)),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, false);
                },
                style: ElevatedButton.styleFrom(
                    elevation: 4,
                    side: const BorderSide(color: Colors.red, width: 2),
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold)),
                child: const Text(
                  "No (x) ",
                  style: TextStyle(color: Colors.red),
                )),
            ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.blue.withOpacity(0.2),
                    // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    elevation: 4,
                    side: const BorderSide(color: Colors.green, width: 2),
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold)),
                child: const Text(
                  "Yes (✓)",
                  style: TextStyle(color: Colors.green),
                )),
          ],
        ),
      ],
    ),
  );
}
