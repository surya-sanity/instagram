import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram/utils/size_config.dart';

class InstaIcon extends StatelessWidget {
  const InstaIcon({
    this.size,
    this.iconColor,
    required this.iconPath,
  });
  final double? size;
  final String iconPath;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      height: this.size ?? SizeConfig.longside / 28,
      width: this.size ?? SizeConfig.longside / 28,
      child: SvgPicture.asset(iconPath),
    );
  }
}
