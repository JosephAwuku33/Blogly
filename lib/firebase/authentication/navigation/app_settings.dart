import 'package:flutter/material.dart';
import 'package:blogly/pages/home_page.dart';
import 'package:blogly/firebase/authentication/provider/auth_provider.dart';
import 'package:blogly/pages/login_page.dart';
import 'package:provider/provider.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({super.key});

  @override
  State<AppSettings> createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, auth, child) => StreamBuilder(
          stream: auth.onAuthStateChange(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return HomePage();
            }
            return const Login();
          }),
    );
  }
}
