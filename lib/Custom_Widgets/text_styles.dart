import 'package:flutter/material.dart';

import 'app_modules.dart';

const hintTextStyle = TextStyle(
  color: Colors.grey, // appColor,
  fontFamily: 'OpenSans',
);

const labelTextStyle = TextStyle(
  color: appColor2,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

// ignore: non_constant_identifier_names
final BoxDecorationStyle = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(5),
  boxShadow: const [
    BoxShadow(
      color: Colors.black12,
      offset: Offset(1, 1),
      blurRadius: 6,
      spreadRadius: 0,
    ),
  ],
);
