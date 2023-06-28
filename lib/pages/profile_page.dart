import 'package:blogly/models/user.dart';
import 'package:blogly/widgets/profile_widget.dart';
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
          ProfileWidget(
            key: key,
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
          )
        ],
      );
}
