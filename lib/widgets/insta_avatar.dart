import 'package:flutter/material.dart';
import 'package:instagram/models/user.dart';
import 'package:instagram/utils/colors.dart';

class InstaAvatar extends StatelessWidget {
  const InstaAvatar({required this.user, required this.avatarSize});
  final User user;
  final double avatarSize;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        padding: EdgeInsets.all(2.0),
        height: avatarSize,
        width: avatarSize,
        decoration: BoxDecoration(
          color: Colors.white,
          gradient: user.isStoryActive
              ? InstaColors.storyActiveGradient
              : LinearGradient(
                  colors: [Colors.transparent, Colors.transparent]),
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
                padding: EdgeInsets.all(2.0),
                child: CircleAvatar(
                  foregroundImage: AssetImage(user.profileImage),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
