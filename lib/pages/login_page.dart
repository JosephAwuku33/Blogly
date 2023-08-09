// ignore: file_names
import 'package:blogly/widgets/form_widget.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Image.network(
                      "https://images.unsplash.com/photo-1633410189542-36d96e3762b8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80")),
              CustomForm(
                key: key,
              )
            ],
          ),
        ));
  }
}
