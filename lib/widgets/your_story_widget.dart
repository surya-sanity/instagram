import 'package:flutter/material.dart';
import 'package:instagram/models/user.dart';
import 'package:instagram/utils/insta_icon.dart';

class YourStory extends StatelessWidget {
  const YourStory({
    @required this.user,
    @required this.avatarSize,
    this.addMode = false,
  });
  final User user;
  final double avatarSize;
  final bool addMode;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        height: avatarSize,
        width: avatarSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Stack(
          children: [
            Align(
              child: Container(
                height: avatarSize,
                width: avatarSize,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(3.0),
                child: CircleAvatar(
                  foregroundImage: AssetImage(user.profileImage),
                ),
              ),
            ),
            if (addMode)
              Positioned(
                  bottom: 5,
                  right: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 1.5),
                    ),
                    child: InstaIcon(
                      size: avatarSize / 4.5,
                      iconPath: "assets/icons/add_story.svg",
                    ),
                  )),
          ],
        ),
      ),
    );
  }
}
