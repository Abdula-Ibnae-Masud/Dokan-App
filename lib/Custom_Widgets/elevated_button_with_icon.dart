import 'package:flutter/material.dart';
import 'app_modules.dart';

class ButtonWithIcon extends StatelessWidget {
  final double width;
  final double height;
  final IconData? icon;
  final String text;
  final double fontsize;
  final Function()? onTap;
  const ButtonWithIcon(
      {Key? key,
      required this.onTap,
      required this.width,
      this.height = 48,
      this.icon,
      required this.text,
      this.fontsize = 14})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        width: width,
        child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: const BorderSide(width: 1, color: Colors.black)),
              backgroundColor: appColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  text,
                  style: TextStyle(
                      fontSize: fontsize,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            )));
  }
}
