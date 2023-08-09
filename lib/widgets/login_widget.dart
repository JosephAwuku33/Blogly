import 'package:blogly/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:blogly/firebase/authentication/provider/auth_provider.dart';
import 'package:provider/provider.dart';

class CustomLoginForm extends StatefulWidget {
  const CustomLoginForm({super.key});

  @override
  State<CustomLoginForm> createState() => _CustomLoginFormState();
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> loginUser() async {
    try {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        await Provider.of<AuthProvider>(context, listen: false).loginUser(
          emailController.text,
          passwordController.text,
        );
        if (mounted) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        }
      }
    } catch (err) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            err.toString(),
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
              const Center(
                child: Text("Sign Up Page"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Required field";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email_rounded),
                    labelText: "Name",
                    hintText: "Enter your full Name",
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Required field";
                  }
                  if (value.length < 8) {
                    return "Password not strong";
                  }
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    labelText: "Password",
                    hintText: "Password",
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
                onPressed: () {},
                child: const Icon(Icons.navigate_next),
              ),
            ],
          ),
        ));
  }
}
