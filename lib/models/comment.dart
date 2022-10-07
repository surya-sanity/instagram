import 'package:instagram/models/user.dart';

class Comment {
  User user;
  String commentTxt;
  bool isLiked;
  int likeCount;
  String fromTime;
  int replyCount;
  List<Comment> replies;

  Comment({
    this.user,
    this.commentTxt,
    this.isLiked,
    this.likeCount,
    this.fromTime,
    this.replyCount,
    this.replies,
  });
}
