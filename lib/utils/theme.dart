import 'package:flutter/material.dart';
import 'package:instagram/utils/colors.dart';

class InstaTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      scaffoldBackgroundColor: InstaColors.darkBg,
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
      brightness: Brightness.dark,
      pageTransitionsTheme: PageTransitionsTheme(
        builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }
}
