import 'package:flutter/material.dart';
import 'app_modules.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  final double height;
  final double? width;
  final IconData? icon;
  final String text;
  final double fontsize;
  final Function()? onTap;
  const CustomElevatedButtonWidget(
      {Key? key,
      required this.onTap,
      this.height = 42,
      /* required  */ this.width,
      this.icon,
      required this.text,
      this.fontsize = 12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: width,
        child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                // side: const BorderSide(width: 2, color: appColor2),
              ),
              backgroundColor: appColor,
            ),
            child: Text(
              text,
              style: const TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            )));
  }
}
