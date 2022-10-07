import 'package:flutter/material.dart';
import 'package:instagram/utils/data.dart';
import 'package:instagram/utils/insta_icon.dart';
import 'package:instagram/utils/size_config.dart';
import 'package:instagram/utils/text_styles.dart';
import 'package:instagram/widgets/insta_avatar.dart';
import 'package:instagram/widgets/stories_listview.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          StoriesListView(),
          ...feed.map((post) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(
                    SizeConfig.sidePadding - 8,
                  ),
                  height: SizeConfig.longside / 13,
                  width: SizeConfig.screenWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InstaAvatar(
                            user: post.user,
                            avatarSize: SizeConfig.longside / 19,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  post.user.userName,
                                  style: h5Medium,
                                ),
                                Text(
                                  post.location,
                                  style: h6,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      InstaIcon(
                          size: SizeConfig.longside / 50,
                          iconPath: "assets/icons/three_dots.svg")
                    ],
                  ),
                ),
                GestureDetector(
                  onDoubleTap: () {
                    setState(() {
                      post.isLiked = !post.isLiked;
                    });
                  },
                  child: Container(
                    height: SizeConfig.screenWidth,
                    width: SizeConfig.screenWidth,
                    child: Image(
                      image: AssetImage(
                        post.postImage,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: SizeConfig.sidePadding),
                  height: SizeConfig.longside / 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                post.isLiked = !post.isLiked;
                              });
                            },
                            child: InstaIcon(
                              size: SizeConfig.longside / 38,
                              iconPath: post.isLiked
                                  ? "assets/icons/liked.svg"
                                  : "assets/icons/unliked.svg",
                            ),
                          ),
                          SizedBox(width: SizeConfig.longside / 50),
                          GestureDetector(
                            onTap: () {},
                            child: InstaIcon(
                              size: SizeConfig.longside / 38,
                              iconPath: "assets/icons/comment.svg",
                            ),
                          ),
                          SizedBox(width: SizeConfig.longside / 50),
                          GestureDetector(
                            onTap: () {},
                            child: InstaIcon(
                              size: SizeConfig.longside / 38,
                              iconPath: "assets/icons/send.svg",
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            post.isSaved = !post.isSaved;
                          });
                        },
                        child: InstaIcon(
                          size: SizeConfig.longside / 38,
                          iconPath: post.isSaved
                              ? "assets/icons/save_filled.svg"
                              : "assets/icons/save.svg",
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.sidePadding, vertical: 3),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: SizeConfig.longside / 40,
                        width: SizeConfig.longside / 18,
                        child: Stack(
                          children: [
                            ...List.generate(
                              likeAvatars.length,
                              (index) => Positioned(
                                left: 15.0 * index,
                                child: CircleAvatar(
                                  radius: SizeConfig.longside / 90,
                                  foregroundImage: AssetImage(
                                    likeAvatars[index],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: SizeConfig.longside / 80),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Liked by ",
                              style: h6,
                            ),
                            TextSpan(
                              text: "__s00rya__",
                              style: h6Medium,
                            ),
                            TextSpan(
                              text: " and ${post.likeCount} others",
                              style: h6Medium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: SizeConfig.longside / 80),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.sidePadding, vertical: 3),
                  child: Text(
                    "View all ${post.commentsCount} comments",
                    style: h6.copyWith(color: Colors.white70),
                  ),
                ),
                SizedBox(width: SizeConfig.longside / 80),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.sidePadding, vertical: 3),
                  child: Text(
                    "${post.fromTime} mins ago",
                    style: h6.copyWith(
                        color: Colors.white70,
                        fontSize: SizeConfig.longside / 90),
                  ),
                ),
              ],
            );
          })
        ],
      ),
    );
  }
}
