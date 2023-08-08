import 'package:blogly/pages/signup_page.dart';
import 'package:blogly/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeModel(),
        builder: ((context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: const SignUpPage(),
              theme: Provider.of<ThemeModel>(context).themeData);
        }),
      )
    ]);
  }
}
