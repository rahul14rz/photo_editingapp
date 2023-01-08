import 'package:flutter/cupertino.dart';

class ScreenSize {
  static late double width;
  static late double height;

  static init(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }
}

class IconSize {
  static const double mediam = 30;
}
