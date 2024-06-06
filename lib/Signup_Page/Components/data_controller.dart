import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:dokan/Login_Page/Screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Custom_Widgets/app_modules.dart';
import '../../Custom_Widgets/json_url_link.dart';
import '../../Custom_Widgets/show_snackbar.dart';

signupStatus(
    BuildContext context,
    TextEditingController userNameController,
    TextEditingController userEmailController,
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
    signupUrl,
    options: Options(
      followRedirects: false,
      validateStatus: (status) => true,
    ),
    data: jsonEncode({
      "username": userNameController.text,
      "email": userEmailController.text,
      "password": passController.text
    }),
  );

  try {
    if (response.statusCode.toString() == "200") {
      // ignore: use_build_context_synchronously
      Navigator.pop(context);

      isSignedin = true;
      // debugPrint("Signup Successfull!");
      Get.to(const LoginScreen());
    } else {
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
      // ignore: use_build_context_synchronously
      showSnackBarAlart("Username already exists, please enter another username");
    }
  } catch (exception) {
    throw Exception("Error on server");
  }
}
