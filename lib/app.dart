import 'package:blogly/pages/signup_page.dart';
import 'package:blogly/providers/theme_provider.dart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (context) => ThemeModel(),
        child: const MaterialApp(
            debugShowCheckedModeBanner: false, home: SignUpPage()));
  }
}
