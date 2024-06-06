import 'package:flutter/material.dart';
import 'app_modules.dart';

class HomePageCardButton extends StatelessWidget {
  final double? hight;
  final double? width;
  final double? fontSize;
  final String? iconPath;
  final AssetImage? assetsimage;
  final Color? backgroundColor;
  final Color? textColor;
  final String? text;
  final Gradient? gradient;
  final Function()? onTap;
  const HomePageCardButton(
      {Key? key,
      this.hight,
      this.width,
      this.fontSize = 20,
      required this.iconPath,
      this.assetsimage,
      this.backgroundColor = Colors.white,
      this.textColor = appColor, // Colors.black,
      required this.text,
      this.gradient,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shadowColor: appColor.withOpacity(0.3),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Container(
          height: 110,
          width: 440,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              offset: const Offset(1, 1),
              spreadRadius: 4,
              blurRadius: 6,
              color: Colors.black.withOpacity(0.2),
            )
          ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: 50,
                image: AssetImage(iconPath!),
              ),
              const SizedBox(height: 4),
              Text(text!,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}
