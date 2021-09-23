import 'package:flutter/material.dart';

class MyColors {
  static getDreamListItemBackground(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    return brightness == Brightness.light
        ? dreamListItemBackgroundLight
        : dreamListItemBackgroundDark;
  }

  static const dreamListItemBackgroundLight = Color.fromRGBO(243, 243, 243, 1);
  static const dreamListItemBackgroundDark = Color.fromRGBO(46, 46, 46, 1);
  static const primary = Color(0xFF3777FF);
}
