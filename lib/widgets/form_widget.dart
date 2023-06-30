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
              )
            ],
          ),
        ));
  }
}
