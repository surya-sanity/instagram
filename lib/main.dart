import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram/app.dart';
import 'package:instagram/utils/theme.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(Instagram());
}

class Instagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: InstaTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: App(),
    );
  }
}
