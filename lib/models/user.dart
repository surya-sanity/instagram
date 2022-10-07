import 'package:instagram/models/post.dart';

class User {
  String userName;
  String name;
  String status;
  String profileImage;
  bool isVerified;
  bool isStoryActive;
  bool isLive;
  int postsCount;
  int followersCount;
  int followingCount;
  List<Post> posts;

  User({
    this.userName,
    this.followersCount,
    this.followingCount,
    this.name,
    this.profileImage,
    this.isVerified,
    this.isStoryActive,
    this.isLive,
    this.posts,
    this.postsCount,
    this.status,
  });
}
