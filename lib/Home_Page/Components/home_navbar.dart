import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dokan/Home_Page/Screen/home_screen.dart';
import 'package:dokan/Profile_Page/Screen/profile_screen.dart';
import 'package:flutter/material.dart';
import '../../Custom_Widgets/app_modules.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  Color activeColor = appColor;
  int currentIndex = 2;

  List<Widget> items = [
    const Icon(Icons.home, size: 30),
    const Icon(Icons.apps_outlined, size: 30),
    const Icon(Icons.search_outlined, size: 30),
    const Icon(Icons.shopping_cart_outlined, size: 30),
    const Icon(Icons.perm_identity, size: 30),
  ];

  List<Widget> tabs = [
    const HomeScreen(),
    Container(),
    const HomeScreen(),
    Container(),
    const ProfileScreen()
  ];
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
          index: currentIndex,
          height: 60.0,
          items: items,
          color: Colors.blueGrey,
          buttonBackgroundColor: appColor,
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 400),
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          letIndexChange: (index) => true,
        ));
  }
}
