import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/utils/colors.dart';
import 'package:instagram/utils/insta_icon.dart';
import 'package:instagram/utils/size_config.dart';
import 'package:instagram/utils/text_styles.dart';

PreferredSize instaAppBar(BuildContext context) {
  SizeConfig().init(context);
  return PreferredSize(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.sidePadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 200,
                width: 140,
                child: SvgPicture.asset(
                  "assets/images/insta_text.svg",
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  InstaIcon(
                    iconPath: "assets/icons/new_post.svg",
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: InstaIcon(
                          iconPath: "assets/icons/direct.svg",
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          height: SizeConfig.longside / 50,
                          width: SizeConfig.longside / 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: InstaColors.red,
                          ),
                          child: Center(
                            child: Text(
                              "5",
                              style: h5Medium,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      preferredSize: Size.fromHeight(50));
}
