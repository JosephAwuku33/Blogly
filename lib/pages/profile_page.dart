import 'package:blogly/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

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
          )
        ],
      ),
    );
  }
}
