import 'dart:async';

import 'package:flutter/material.dart';
import 'utils/colors.dart';

import 'screen/main_screen/screen/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }


  startTimer() {
    //var duration = Duration(seconds: 5);
    return Timer(const Duration(seconds: 5),()=>
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const IntroScreen()),),
      
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Icon(
              Icons.edit_note_rounded,
              color: MyColors.red,
              size: 50,
            ),
           const SizedBox(
              height: 15,
            ),
            Text(
              'Photo Editor',
              style: TextStyle(color: MyColors.red, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
