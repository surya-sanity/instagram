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
    this.user,
    this.location,
    this.postImage,
    this.postDesc,
    this.fromTime = "15m",
    this.commentsCount,
    this.likeCount,
    this.isStoryActive,
    this.isLiked,
    this.isSaved,
  });
}
