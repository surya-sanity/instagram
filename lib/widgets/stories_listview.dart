import 'package:flutter/material.dart';
import 'package:instagram/utils/data.dart';
import 'package:instagram/utils/size_config.dart';
import 'package:instagram/utils/text_styles.dart';
import 'package:instagram/widgets/insta_avatar.dart';
import 'package:instagram/widgets/your_story_widget.dart';

class StoriesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.sidePadding,
        top: SizeConfig.sidePadding,
      ),
      child: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.longside / 8.5,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: stories.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: Column(
                  children: [
                    YourStory(
                        user: currentUser,
                        addMode: true,
                        avatarSize: SizeConfig.longside / 12),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        "Your Story",
                        style: h6,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              );
            }
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Column(
                children: [
                  InstaAvatar(
                      user: stories[index].user,
                      avatarSize: SizeConfig.longside / 12),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      stories[index].user.userName,
                      style: h6,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
