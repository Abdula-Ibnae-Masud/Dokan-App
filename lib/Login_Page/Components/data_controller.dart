import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:dokan/Home_Page/Components/home_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Custom_Widgets/app_modules.dart';
import '../../Custom_Widgets/json_url_link.dart';
import '../../Custom_Widgets/show_snackbar.dart';

loginStatus(BuildContext context, TextEditingController userNameController,
    TextEditingController passController) async {
  showDialog(
    context: context,
    builder: (context) {
      return const Center(
          child: CircularProgressIndicator(
        color: appColor2,
        backgroundColor: appColor,
      ));
    },
  );
  // print(logInUrl);
  var response = await dio.post(
    logInUrl,
    options: Options(
      followRedirects: false,
      validateStatus: (status) => true,
    ),
    data: jsonEncode(
        {"username": userNameController.text, "password": passController.text}),
  );

  var result = response.data;
  // print(response.statusCode);

  try {
    if (response.statusCode.toString() == "200") {
      // ignore: use_build_context_synchronously
      Navigator.pop(context);

      savedUserToken = result['token'];
      savedUserEmail = result['user_email'];
      savedUserDispayName = result['user_display_name'];

      Get.to(const BottomNavigationWidget());
    } else {
      debugPrint("Login Not Successfull!");
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
      // ignore: use_build_context_synchronously
      showSnackBarAlart(result["code"]);
    }
  } catch (exception) {
    throw Exception("Error on server");
  }
}
