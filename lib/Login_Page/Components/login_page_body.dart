import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dokan/Custom_Widgets/show_snackbar.dart';
import 'package:dokan/Signup_Page/Screen/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../Custom_Widgets/app_modules.dart';
import '../../Custom_Widgets/elevated_button.dart';
import '../../Custom_Widgets/text_styles.dart';
import 'data_controller.dart';

class LoginPageBody extends StatefulWidget {
  const LoginPageBody({super.key});

  @override
  State<LoginPageBody> createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody> {
  bool isSavedPassword = false, isHidden = true;
  TextEditingController userNameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  Future checkInternetConnection(String state) async {
    final connectionStatus = await Connectivity().checkConnectivity();
    if (connectionStatus == ConnectivityResult.wifi ||
        connectionStatus == ConnectivityResult.mobile) {
      if (state == "login") {
        // ignore: use_build_context_synchronously
        loginStatus(context, userNameController, passController);
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Dokan",
              style: TextStyle(
                fontSize: 28,
                color: appColor,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 20),
          const Text("Sign In",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 20),
          Column(
            children: [
              TextFormField(
                controller: userNameController,
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    Icons.verified_user_outlined,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none),
                      isDense: true,
                  hintText: 'User Name',
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
                    color: Colors.grey,
                  ),
                  hintText: 'Password',
                  hintStyle: hintTextStyle,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none),
                      isDense: true,
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        isHidden = !isHidden;
                      });
                    },
                    child: const Icon(
                      Icons.visibility,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          CustomElevatedButtonWidget(
              width: 900,
              onTap: () {
                // Get.to(HomePage());
                checkInternetConnection("login");
              },
              text: "Login"),
          const SizedBox(height: 10),
          SizedBox(
            width: 900,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                TextButton(
                    onPressed: () {},
                    child: const Text("Forgot Password?",
                        style: TextStyle(color: Colors.black))),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 4,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.facebook_sharp, color: Colors.blue,),
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
          TextButton(
            onPressed: () {
              Get.to(const SignupScreen());
            },
            child: const Text("Create New Account",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                )),
          )
        ],
      ),
    );
  }
}
