import 'package:flutter/material.dart';
import 'package:instagram/app.dart';
import 'package:instagram/utils/theme.dart';

void main() {
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
