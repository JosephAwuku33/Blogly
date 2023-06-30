import 'package:blogly/widgets/form_widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const Center(
            child: Image(image: AssetImage('assets/images/social.jpg')),
          ),
          CustomForm(key: key)
        ],
      )),
    );
  }
}
