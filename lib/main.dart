import 'package:flutter/material.dart';
import 'package:nxt_gen_guidance/colors.dart';
import 'package:nxt_gen_guidance/login/view/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: kBlueColor),
    );
  }
}
