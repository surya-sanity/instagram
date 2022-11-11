import 'package:flutter/material.dart';
import 'package:instagram/utils/insta_icon.dart';
import 'package:instagram/utils/size_config.dart';
import 'package:instagram/utils/text_styles.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.sidePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight / 70,
                ),
                ProfileHeader(),
                SizedBox(
                  height: SizeConfig.screenHeight / 80,
                ),
                BioContainer(),
                SizedBox(
                  height: SizeConfig.screenHeight / 70,
                ),
                ProfileActions(),
                SizedBox(
                  height: SizeConfig.screenHeight / 50,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            child: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_on),
                ),
                Tab(
                  icon: InstaIcon(
                    iconPath: "assets/icons/reels.svg",
                    size: SizeConfig.longside / 40,
                  ),
                ),
                Tab(
                  icon: Icon(Icons.assignment_ind),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Container(
                  child: Wrap(children: [
                    Image(
                        fit: BoxFit.contain,
                        width: SizeConfig.screenWidth / 3,
                        image: AssetImage("assets/images/post1.jpeg")),
                    Image(
                        fit: BoxFit.contain,
                        width: SizeConfig.screenWidth / 3,
                        image: AssetImage("assets/images/post2.jpeg")),
                    Image(
                        fit: BoxFit.contain,
                        width: SizeConfig.screenWidth / 3,
                        image: AssetImage("assets/images/post3.jpeg"))
                  ]),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.white)),
                        padding: EdgeInsets.all(10),
                        child: InstaIcon(
                          iconPath: "assets/icons/reels.svg",
                          size: SizeConfig.longside / 20,
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight / 50,
                      ),
                      Text(
                        "Reels",
                        style: h3Bold,
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight / 80,
                      ),
                      Text(
                        "When you post reels they'll appear here",
                        style: h6,
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.white)),
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.assignment_ind,
                          size: SizeConfig.longside / 20,
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight / 50,
                      ),
                      Text(
                        "Reels",
                        style: h3Bold,
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight / 80,
                      ),
                      Text(
                        "When you post reels they'll appear here",
                        style: h6,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileActions extends StatelessWidget {
  const ProfileActions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color(0xFF262626),
              borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Professional dashboard",
              style: h6Bold,
            ),
            SizedBox(
              height: SizeConfig.screenHeight / 250,
            ),
            Text(
              "167 accounts reached in the last 30 days.",
              style: h6,
            ),
          ]),
        ),
        SizedBox(
          height: SizeConfig.screenHeight / 120,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF262626),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  "Edit profile",
                  style: h6Bold,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              width: SizeConfig.screenHeight / 120,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF262626),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Text(
                  "Contact",
                  style: h6Bold,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

class BioContainer extends StatelessWidget {
  const BioContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Developer | SanityCodes",
          style: h5Bold,
        ),
        SizedBox(
          height: SizeConfig.screenHeight / 250,
        ),
        Text(
          "Science, Technology & Engineering",
          style: h6.copyWith(color: Colors.grey),
        ),
        SizedBox(
          height: SizeConfig.screenHeight / 250,
        ),
        Text("⚡️ I develop Applications using Flutter, React, React Native",
            style: h6),
        SizedBox(
          height: SizeConfig.screenHeight / 200,
        ),
        Text("👇 Source codes", style: h6),
        SizedBox(
          height: SizeConfig.screenHeight / 200,
        ),
        Text("github.com/surya-sanity",
            style: h6.copyWith(color: Colors.blue[100])),
      ],
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.black,
          radius: SizeConfig.screenHeight / 28,
          foregroundImage: AssetImage("assets/images/profilepic.png"),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: [
                    Text(
                      "4",
                      style: h4Bold,
                    ),
                    Text(
                      "Posts",
                      style: h6,
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "50",
                      style: h4Bold,
                    ),
                    Text(
                      "Followers",
                      style: h6,
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "39",
                      style: h4Bold,
                    ),
                    Text(
                      "Following",
                      style: h6,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
