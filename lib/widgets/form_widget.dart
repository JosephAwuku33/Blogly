import 'package:flutter/material.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Required field";
                  }
                },
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    labelText: "Name",
                    hintText: "Enter your full Name",
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white),
              ),
              const SizedBox(height: 30),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Required field";
                  }
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "Email",
                    hintText: "Enter your email address",
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white),
              ),
              const SizedBox(height: 30),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Required field";
                  }
                },
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    labelText: "Password",
                    hintText: "Password",
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white),
              )
            ],
          ),
        ));
  }
}
