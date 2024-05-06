import 'package:flutter/material.dart';
import 'package:nxt_gen_guidance/colors.dart';
import 'package:nxt_gen_guidance/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    final lightTheme = ThemeData(
        // brightness: Brightness.0,
        // primaryColor: kVioletColor,
        colorSchemeSeed: kBlueColor
        // backgroundColor: kLightBackgroundColor,
        // Define other light theme properties as needed
        );

    final darkTheme = ThemeData(
        brightness: Brightness.dark,
        // primaryColor: kVioletColor,
        colorSchemeSeed: kBlueColor
        // backgroundColor: kDarkBackgroundColor,
        // Define other dark theme properties as needed
        );

    return MaterialApp(
      title: "Shopping List App",
      home: const LoginPage(),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      // Use system theme mode (light/dark)
    );
  }
}
