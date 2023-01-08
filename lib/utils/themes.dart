import 'package:flutter/material.dart';
import 'app_styles.dart';
import 'colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
       backgroundColor: MyColors.primaryColor,
      // toolbarHeight: 90,
      // backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: MyFontsize.textmedium,
        fontWeight: FontWeight.w500,
        fontFamily: 'Scout',
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    // primarySwatch: MyColors.createMaterialColor(MyColors.primaryColor),
    fontFamily: 'Scout',
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        color: Colors.black,
        fontSize: MyFontsize.textmedium,
      ),
    ),
  );
  
/* 
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    //useMaterial3: true,
    appBarTheme: const AppBarTheme(
      //toolbarHeight: 90,
      backgroundColor: Colors.black,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontFamily: 'Poppins',
      ),
    ),
    scaffoldBackgroundColor: MyColors.pageBgColor,
    colorScheme: darkColorScheme,
    // primarySwatch: MyColors.createMaterialColor(MyColors.primaryColor),
    fontFamily: 'Poppins',
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        color: Colors.white,
      ),
    ),
  ); */
}
