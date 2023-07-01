import 'package:blogly/models/user.dart';
import 'package:blogly/widgets/profile_widget.dart';
import 'package:blogly/widgets/ranking_widget.dart';
import 'package:flutter/material.dart';
import 'package:blogly/data/profile_data.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    minRadius: 35.0,
                    child: Icon(
                      Icons.call,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  ProfileWidget(),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    minRadius: 35.0,
                    child: Icon(
                      Icons.message,
                      size: 30,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ],
          ),
          buildName(userProfile[0])
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                user.name,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
            child:
                Text(user.about, style: const TextStyle(color: Colors.black87)),
          ),
          const SizedBox(
            height: 60,
            child: RankingsWidget(),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: SizedBox(
              height: 30,
              child: Text(
                "About",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
            ),
          ),
        ],
      );
}
