import 'package:instagram/models/user.dart';

class Story {
  User user;
  bool isClose;
  String timeFrom;
  bool viewed;

  Story({
    required this.user,
    this.isClose = false,
    this.timeFrom = "25m",
    this.viewed = false,
  });
}
