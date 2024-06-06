import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

/* double h = Get.height;
double w = Get.width; */

Dio dio = Dio();

const Color appColor = Color.fromARGB(255, 234, 79, 32);
const Color appColor2 = Color.fromARGB(255, 0, 138, 76);
Color appBackgroundColor = const Color.fromARGB(255, 117, 123, 231);

double getHeight(BuildContext context, double getHeight) {
  // double height = h * View.of(context).physicalSize.height;
  double height = getHeight * MediaQuery.of(context).size.height;
  return height;
}

double getWidth(BuildContext context, double getWidth) {
  double width = getWidth * MediaQuery.of(context).size.width;
  return width;
}

/* AppBar appBar = AppBar(
  title: const Text('Demo'),
);
double appBarPreferredHeight =
    MediaQuery.of(context).padding.top + appBar.preferredSize.height; */

/* Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    const LoginScreen()
            )
        )
    ); */