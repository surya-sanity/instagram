import 'package:flutter/material.dart';
import 'package:instagram/utils/size_config.dart';
import 'package:instagram/utils/text_styles.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Center(
        child: Text(
          "Search",
          style: h3,
        ),
      ),
    );
  }
}
