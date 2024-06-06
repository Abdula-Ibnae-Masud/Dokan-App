import 'package:flutter/material.dart';
import 'app_modules.dart';

class GetButton extends StatelessWidget {
  final double width;
  final double height;
  final IconData? icon;
  final String text;
  final double fontsize;
  final Function()? onTap;
  const GetButton(
      {Key? key,
      required this.onTap,
      required this.width,
      this.height = 50,
      this.icon = Icons.arrow_forward_outlined,
      this.text = 'NEXT',
      this.fontsize = 12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
          padding: const EdgeInsets.only(left: 4, right: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              // border: Border.all(width: 1, color: Colors.black),
              color: appColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: fontsize,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                icon,
                color: Colors.white,
              ),
            ],
          ),
        ));
  }
}
