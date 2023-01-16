import 'package:flutter/material.dart';

class CustomNavigation {
  static Future<dynamic> nextscreenPush(BuildContext context, Widget page) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }
}
