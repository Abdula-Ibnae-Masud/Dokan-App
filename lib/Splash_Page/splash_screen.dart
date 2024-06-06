import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dokan/Custom_Widgets/app_modules.dart';
import 'package:flutter/material.dart';

import '../Custom_Widgets/json_url_link.dart';
import '../Login_Page/Screen/login_screen.dart';
import '../Signup_Page/Screen/signup_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    isSignedin;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        // centered: true,
        splash: const Center(
          child: Text(
            "Dokan",
            style: TextStyle(
                fontSize: 24,
                letterSpacing: 2,
                color: appColor,
                fontWeight: FontWeight.bold),
          ),
        ),
        // splashIconSize: m,
        duration: 2500,
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.white, 
        nextScreen: isSignedin == true ? const LoginScreen() : const SignupScreen(),
      );
    
  }
}