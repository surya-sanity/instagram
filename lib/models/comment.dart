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
    required this.user,
    required this.commentTxt,
    this.isLiked = false,
    this.likeCount = 0,
    required this.fromTime,
    this.replyCount = 0,
    this.replies = const [],
  });
}
