import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dokan/Login_Page/Screen/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../Custom_Widgets/app_modules.dart';
import '../../Custom_Widgets/elevated_button.dart';
import '../../Custom_Widgets/show_snackbar.dart';
import '../../Custom_Widgets/text_styles.dart';
import 'data_controller.dart';

class SignupPageBody extends StatefulWidget {
  const SignupPageBody({super.key});

  @override
  State<SignupPageBody> createState() => _SignupPageBodyState();
}

class _SignupPageBodyState extends State<SignupPageBody> {
  bool isSavedPassword = false, isHidden = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController conPassController = TextEditingController();

  Future checkInternetConnection(String state) async {
    final connectionStatus = await Connectivity().checkConnectivity();
    if (connectionStatus == ConnectivityResult.wifi ||
        connectionStatus == ConnectivityResult.mobile) {
      if (state == "signup") {
        // ignore: use_build_context_synchronously
        signupStatus(context, nameController, emailController, passController);
      }
    } else {
      showSnackBarAlart("No internet, Please check!");
    }
  }

  @override
  void initState() {
    checkInternetConnection("init");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Stack(children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: Icon(Icons.person_2_outlined, size: 50),
              ),
              Positioned(
                right: 0.0,
                bottom: 0.0,
                child: CircleAvatar(
                    radius: 18,
                    backgroundColor: appColor,
                    child: Icon(Icons.camera_alt_outlined, size: 20)),
              ),
            ]),
            const SizedBox(height: 20),
            Column(
              children: [
                TextFormField(
                  controller: nameController,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'OpenSans',
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(
                      Icons.person_2_outlined,
                      color: appColor2,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                    isDense: true,
                    hintText: 'Name',
                    hintStyle: hintTextStyle,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: emailController,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'OpenSans',
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(
                      Icons.verified_user_outlined,
                      color: appColor2,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                    isDense: true,
                    hintText: 'Email',
                    hintStyle: hintTextStyle,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: passController,
                  obscureText: isHidden,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'OpenSans',
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: appColor2,
                    ),
                    hintText: 'Password',
                    hintStyle: hintTextStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                    isDense: true,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: conPassController,
                  obscureText: isHidden,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'OpenSans',
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: appColor2,
                    ),
                    hintText: 'Confirm Password',
                    hintStyle: hintTextStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                    isDense: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            CustomElevatedButtonWidget(
                width: 900,
                onTap: () {
                  if (nameController.text.isEmpty ||
                      emailController.text.isEmpty ||
                      passController.text.isEmpty ||
                      conPassController.text.isEmpty) {
                    showSnackBarAlart("Please, Fill all the required field!");
                  } else {
                    if (passController.text != conPassController.text) {
                      showSnackBarAlart("Password did not match!");
                    } else {
                      checkInternetConnection("signup");
                    }
                  }
                },
                text: "Sign Up"),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 4,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.facebook_sharp,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Card(
                  elevation: 4,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: FaIcon(FontAwesomeIcons.google),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
                child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                        text: "Already has an account?  ",
                        style: const TextStyle(fontSize: 16, color: Colors.black87),
                        children: [
                          TextSpan(
                              text: "Login",
                              style: const TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 16,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.to(const LoginScreen()))
                        ])))
          ],
        ),
      ),
    );
  }
}
