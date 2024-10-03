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
    required this.userName,
    required this.followersCount,
    required this.followingCount,
    required this.name,
    required this.profileImage,
    required this.isVerified,
    required this.isStoryActive,
    required this.isLive,
    required this.posts,
    required this.postsCount,
    required this.status,
  });
}
