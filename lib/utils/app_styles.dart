import 'package:flutter/material.dart';


class MyFontsize {
  static const double iconSizeLarge = 18;

  static const double iconSizeSmall = 15;
  static const double textsmall = 14;
  static const double textxl = 12;

  static const double textsssmall = 10;
  static const double texteig = 8;

  static const double textnormal = 16;

  static const double textmedium = 18;
  static const double textlarge = 20;

  static const double buttontext = 18;
  static const double introsubtext = 18;
  static const double introcontent = 16;
  static const double introtextnormal = 24;
  static const double introtitle = 26;
  // static const double normal = 16;

  static const double loginMainHeading = 35;

  
}

class MyFontStyles {
  static const TextStyle introHeaderStyle = TextStyle(
    fontSize: MyFontsize.loginMainHeading,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle introSubHeaderStyle = TextStyle(
    fontSize: MyFontsize.introsubtext,
    fontWeight: FontWeight.w500,
  );

  
  static const TextStyle title = TextStyle(
    fontSize: MyFontsize.textnormal,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle subTitle = TextStyle(
    fontSize: MyFontsize.textnormal,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle profiletitle = TextStyle(
    fontSize: MyFontsize.textxl,
    fontWeight: FontWeight.w500,
  );

}


class MyPadding{

  static const double overall = 15;
}