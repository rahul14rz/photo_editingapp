import 'package:flutter/material.dart';

nextscreenPush(BuildContext context, page) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: ((context) => page),
      ),);
}
