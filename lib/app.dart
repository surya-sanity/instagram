import 'package:flutter/material.dart';
import 'package:instagram/utils/data.dart';
import 'package:instagram/utils/insta_icon.dart';
import 'package:instagram/utils/size_config.dart';
import 'package:instagram/views/activity.dart';
import 'package:instagram/views/home.dart';
import 'package:instagram/views/profile.dart';
import 'package:instagram/views/reels.dart';
import 'package:instagram/views/search.dart';
import 'package:instagram/widgets/insta_appbar.dart';

enum Tabs { home, search, reels, activity, profile }

Map<Tabs, Widget> activeTab = {
  Tabs.home: Home(),
  Tabs.search: Search(),
  Tabs.reels: Reels(),
  Tabs.activity: Activity(),
  Tabs.profile: Profile(),
};

class App extends StatefulWidget {
  App({this.body});
  final Widget? body;

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  List<String> activeIcons = [
    "assets/icons/home_filled.svg",
    "assets/icons/search_active.svg",
    "assets/icons/reels_filled.svg",
    "assets/icons/unliked_filled.svg",
  ];
  List<String> inActiveIcons = [
    "assets/icons/home.svg",
    "assets/icons/search.svg",
    "assets/icons/reels.svg",
    "assets/icons/unliked.svg",
  ];

  Tabs currentTab = Tabs.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: instaAppBar(context, currentTab),
      body: SafeArea(
        child: Stack(
          children: [
            if (currentTab == Tabs.home) Home(),
            if (currentTab == Tabs.search) Search(),
            if (currentTab == Tabs.reels) Reels(),
            if (currentTab == Tabs.activity) Activity(),
            if (currentTab == Tabs.profile) Profile(),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: SizeConfig.longside / 16,
          width: SizeConfig.screenWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  if (currentTab != Tabs.home) {
                    setState(() {
                      currentTab = Tabs.home;
                    });
                  }
                },
                child: InstaIcon(
                    size: SizeConfig.longside / 35,
                    iconPath: currentTab == Tabs.home
                        ? activeIcons[0]
                        : inActiveIcons[0]),
              ),
              GestureDetector(
                onTap: () {
                  if (currentTab != Tabs.search) {
                    setState(() {
                      currentTab = Tabs.search;
                    });
                  }
                },
                child: InstaIcon(
                    size: SizeConfig.longside / 35,
                    iconPath: currentTab == Tabs.search
                        ? activeIcons[1]
                        : inActiveIcons[1]),
              ),
              GestureDetector(
                onTap: () {
                  if (currentTab != Tabs.reels) {
                    setState(() {
                      currentTab = Tabs.reels;
                    });
                  }
                },
                child: InstaIcon(
                    size: SizeConfig.longside / 35,
                    iconPath: currentTab == Tabs.reels
                        ? activeIcons[2]
                        : inActiveIcons[2]),
              ),
              GestureDetector(
                onTap: () {
                  if (currentTab != Tabs.activity) {
                    setState(() {
                      currentTab = Tabs.activity;
                    });
                  }
                },
                child: InstaIcon(
                    size: SizeConfig.longside / 35,
                    iconPath: currentTab == Tabs.activity
                        ? activeIcons[3]
                        : inActiveIcons[3]),
              ),
              GestureDetector(
                onTap: () {
                  if (currentTab != Tabs.profile) {
                    setState(() {
                      currentTab = Tabs.profile;
                    });
                  }
                },
                child: Container(
                  height: SizeConfig.longside / 34,
                  width: SizeConfig.longside / 34,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: currentTab == Tabs.profile
                                ? Colors.white
                                : Colors.transparent,
                            width: 1.5),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(currentUser.profileImage),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
