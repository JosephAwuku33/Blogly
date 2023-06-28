import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.only(top: 30),
        child: ClipOval(
          child: Image(
            image: AssetImage('assets/images/Joseph.jpg'),
            fit: BoxFit.cover,
            width: 128,
            height: 128,
          ),
        ),
      ),
    );
  }
}
