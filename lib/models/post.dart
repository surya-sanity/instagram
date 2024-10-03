import 'package:instagram/models/user.dart';

class Post {
  User user;
  String location;
  String postImage;
  String postDesc;
  String fromTime;
  int commentsCount;
  int likeCount;
  bool isStoryActive;
  bool isLiked;
  bool isSaved;

  Post({
    required this.user,
    required this.location,
    required this.postImage,
    required this.postDesc,
    this.fromTime = "15m",
    required this.commentsCount,
    required this.likeCount,
    required this.isStoryActive,
    required this.isLiked,
    required this.isSaved,
  });
}
