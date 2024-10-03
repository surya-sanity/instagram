import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double longside;
  static late double shortside;
  static late bool portrait;
  static late bool landscape;
  static late double sidePadding;
  static late double cardInnerPadding;
  static late double iconSize;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    longside = _mediaQueryData.size.longestSide;
    shortside = _mediaQueryData.size.shortestSide;
    portrait = _mediaQueryData.orientation == Orientation.portrait;
    landscape = _mediaQueryData.orientation == Orientation.landscape;
    sidePadding = shortside * 0.04;
    cardInnerPadding = shortside * 0.020;
    iconSize = longside / 30;
  }
}
